import { Component, ViewChildren, QueryList, ElementRef, Output, EventEmitter, AfterViewInit, OnInit } from '@angular/core';
import { MatSelectChange } from '@angular/material/select';
import { MatSnackBar } from '@angular/material/snack-bar';
import { examples } from 'src/assets/examples';
import { StorageService } from '../storage.service';
import { Unsubscriber } from '../Unsubscriber';

@Component({
  selector: 'code-input',
  templateUrl: './code-input.component.html',
  styleUrls: ['./code-input.component.sass']
})
export class CodeInputComponent extends Unsubscriber implements OnInit, AfterViewInit {
  @ViewChildren('codeView') codeViews: QueryList<ElementRef>

  examples = examples

  code: string[] = ['', '']
  visualizeMode: boolean

  @Output() visualizeClick: EventEmitter<string> = new EventEmitter<string>()
  @Output() reportClick: EventEmitter<string[]> = new EventEmitter<string[]>()

  constructor(private _snackBar: MatSnackBar, private storageService: StorageService) {
    super()
  }

  /**
   * Updates initial service values and subscribes to required variables
   */
  ngOnInit() {
    this.code = [this.storageService._codeInput1.getValue(), this.storageService._codeInput2.getValue()]
    this.visualizeMode = this.storageService._visualizeMode.getValue()

    this.subscribeTo(this.storageService._visualizeMode, (next: boolean) => this.visualizeMode = next)
  }
  /**
   * Emits visualize button click if set to visualize mode after view is initialized
   */
  ngAfterViewInit() {
    if (this.visualizeMode) {
      this.emitChanges(this.visualizeClick, this.code[0])
    }
  }

  /**
   * Emits code changes, then optionally emits a value to an EventEmitter
   * @param emit  EventEmitter to emit to
   * @param value value to emit
   */
  emitChanges(emit?: EventEmitter<any>, value?: any): void {
    this.storageService._codeInput1.next(this.code[0])
    this.storageService._codeInput2.next(this.code[1])

    if (emit !== undefined) {
      emit.emit(value)
    }
  }

  /**
   * Cancels the default action of "tab" and inserts a tab character
   * @param  e       keyboard event
   * @param  index=0 which code input triggered event
   * @return         prevent default
   */
  processTab(e: KeyboardEvent, index=0): boolean {
    let asArray: Array<ElementRef> = this.codeViews.toArray()
    if (e.key === 'Tab') {
      let start: number = asArray[index].nativeElement.selectionStart, end: number = asArray[index].nativeElement.selectionEnd
      this.code[index] = this.code[index].substring(0, start) + '\t' + this.code[index].substring(end)
      setTimeout(function(): void {
        asArray[index].nativeElement.selectionStart = asArray[index].nativeElement.selectionEnd = start + 1
      }.bind(this), 0)
      return false
    }
  }

  /**
   * Updates code input with example code
   * @param e       Example selected
   * @param index=0 which code input to update
   */
  handleExample(e: MatSelectChange, index=0):void {
    this.code[index] = e.value

    this.emitChanges()
  }

  /**
   * Reads in file from input and displays in input
   * @param e       Change event from input[type="file"]
   * @param index=0 Index of input to change
   */
  processFile(e: any, index=0): void {
    let fr: FileReader = new FileReader()
    fr.onload = () => {
      this.codeViews.toArray()[index].nativeElement.value = fr.result
      this.code[index] = fr.result as string

      this.emitChanges()
    }
    if (e.target.files[0].name.slice(-3) === '.py') {
      fr.readAsText(e.target.files[0])
    } else {
      this._snackBar.open('Please upload .py files', 'Dismiss', {
        duration: 5000
      })
      e.target.value = ''
    }
  }
}
