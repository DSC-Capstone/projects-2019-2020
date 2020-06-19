import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Result } from '../output-results/output-results.component';

@Component({
  selector: 'detailed-view',
  templateUrl: './detailed-view.component.html',
  styleUrls: ['./detailed-view.component.sass']
})
export class DetailedViewComponent implements OnInit {
  _columns: string[] = ['input1', 'input2']
  @Input() file1: string = ''
  @Input() file2: string = ''
  displayedColumns: string[] = ['func1', 'func2', 'sim']

  @Input() report: Result = {}
  @Input() set numberOfFiles(value: number) {
    this._columns = Array(value).fill(0).map((_, i) => String(i))
    this.file1 = this.file2 = ''
  }

  @Output() similarityClick: EventEmitter<Array<string>> = new EventEmitter<Array<string>>()

  @Output() fileChange: EventEmitter<Array<string>> = new EventEmitter<Array<string>>()

  constructor() { }

  ngOnInit(): void {
  }

  /**
   * Emit changes when files selected changes
   */
  emitFileChange(): void {
    this.fileChange.emit([this.file1, this.file2])
  }
}
