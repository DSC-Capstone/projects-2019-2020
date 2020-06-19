import { Component, Input, AfterViewInit, EventEmitter, Output, ViewChild, ElementRef } from '@angular/core'
import { StorageService } from '../storage.service'
import { Unsubscriber } from '../Unsubscriber'

declare var vtree: any

@Component({
  selector: 'output-results',
  templateUrl: './output-results.component.html',
  styleUrls: ['./output-results.component.sass']
})
export class OutputResultsComponent extends Unsubscriber implements AfterViewInit {
  _visualizeMode: boolean = true
  _report: Result = {}
  _columns: string[] = ['input1', 'input2']

  @ViewChild('svg') svgElement: ElementRef

  /**
   * Sets visualize/similarity mode and clears fields based on value
   * @param  value Is visualize mode?
   */
  set visualizeMode(value: boolean) {
    this._visualizeMode = value
    if (this._visualizeMode) {
      this.report = {}
      setTimeout(this.ngAfterViewInit.bind(this), 0)
    }
  }
  /**
   * Sets similarity report value and updates column names
   */
  @Input() set report(value: Result) {
    this._report = value
    this.displayedColumns = ['name'].concat(this._columns)
  }
  /**
   * Sets visualization JSON data
   * @param  value JSON data for visualization
   */
  set visualization(value: object) {
    if (this._visualizeMode) {
      this.vt && this.vt.data(Object.assign({}, value)).update()
    }
  }

  /**
   * Sets the number of files for table columns
   */
  @Input() set numberOfFiles(value: number) {
    this._columns = Array(value).fill(0).map((_, i) => 'input' + String(i + 1))
  }

  @Output() similarityClick: EventEmitter<string[]> = new EventEmitter<string[]>()

  vt: any
  displayedColumns = ['name']

  constructor(private storageService: StorageService) {
    super()
  }

  /**
   * Initializes values from storage and subscribes to changes
   */
  ngOnInit(): void {
    this.visualizeMode = this.storageService._visualizeMode.getValue()

    this.subscribeTo(this.storageService._visualizeMode, (next: boolean) => this.visualizeMode = next)
    this.subscribeTo(this.storageService._graphData, (next: object) => this.visualization = next)
  }
  /**
   * Updates vtree css properties in visualize mode
   */
  ngAfterViewInit(): void {
    if (this._visualizeMode) {
      this.vt = vtree(document.getElementById('container')).conf('maxNameLen', 32).conf('maxValueLen', 32)
      this.vt.mode(this.vt.MODE_PYTHON_AST).conf('showArrayNode', false)
      document.querySelector('svg').setAttribute('width', '90vw')
      document.querySelector('svg').setAttribute('height', '90vh')
      document.querySelector('svg').style.boxShadow = 'none'
      this.vt.height = document.querySelector('svg').clientHeight
      this.vt.width = document.querySelector('svg').clientWidth
    }
  }

  /**
   * Emits event when a similarity score is clicked
   * @param i Row which is clicked
   * @param j Column which is clicked
   */
  cellClick(i: number, j: number): void {
    if (i !== j) {
      this.similarityClick.emit([this._report.overview.rows[i], this._report.overview.columns[j]])
    } else {
      this.similarityClick.emit(['', ''])
    }
  }
}

export interface Result {
  overview?: ResultOverview,
  detailed?: object
  errors?: string[]
}

export interface ResultOverview {
  data: number[][],
  rows: string[],
  columns: string[]
}
