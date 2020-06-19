import { Component, EventEmitter, Output } from '@angular/core';
import { FileInputComponent } from 'ngx-material-file-input';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'multifile-upload',
  templateUrl: './multifile-upload.component.html',
  styleUrls: ['./multifile-upload.component.sass']
})
export class MultifileUploadComponent {
  @Output() filesRead: EventEmitter<string[]> = new EventEmitter<string[]>()

  constructor(private _snackBar: MatSnackBar) {}

  /**
   * Reads in multiple files from an input[type="file"] change event
   * @param e change event
   */
  processFiles(e: FileInputComponent): void {
    if (e.value === null) {
      this._snackBar.open('Please upload some files', 'Dismiss', {
        duration: 5000
      })
      return
    } else if (e.value.files.length < 2) {
      this._snackBar.open('Please upload at least 2 files', 'Dismiss', {
        duration: 5000
      })
      return
    }

    let i: number = 0
    let codeArr: string[] = []
    let fr: FileReader = new FileReader()
    fr.onload = () => {
      codeArr.push(fr.result as string)
      if (++i < e.value.files.length) {
        read(i, fr)
      } else {
        this.filesRead.emit(codeArr)
      }
    }
    let read: (x: number, y: FileReader) => void = (idx: number, fr: FileReader) => fr.readAsText(e.value.files[idx])

    read(i, fr)
  }
}
