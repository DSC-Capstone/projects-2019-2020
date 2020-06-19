import { Component, OnInit } from '@angular/core';
import { Result } from '../output-results/output-results.component';
import { MatDialog } from '@angular/material/dialog';
import { CompareDialogComponent } from '../compare-dialog/compare-dialog.component';
import { StorageService } from '../storage.service';
import { Unsubscriber } from '../Unsubscriber';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-similarity-root',
  templateUrl: './similarity-root.component.html',
  styleUrls: ['./similarity-root.component.sass']
})
export class SimilarityRootComponent extends Unsubscriber implements OnInit {
  report: Result = {}
  visualizeMode: boolean = false
  loading: boolean = false
  file1: string = null
  file2: string = null

  _code: string[]

  constructor(private dialog: MatDialog, private storageService: StorageService, private apiService: ApiService) {
    super()
  }

  /**
   * Retrieves values from datastore and subscribes to values
   */
  ngOnInit(): void {
    this.storageService._visualizeMode.next(false)
    this.storageService._loading.next(false)
    this.subscribeTo(this.storageService._loading, (next: boolean) => this.loading = next)
    this.subscribeTo(this.storageService._loading, (next: boolean) => Promise.resolve(null).then(() => this.loading = next))
  }

  /**
   * Retrieves report and sets loading property
   * @param  code Array of code to retrieve report for
   * @return      Promise for when method is resolved
   */
  async getReport(code: string[]): Promise<void> {
    this._code = Array.from(code)
    this.storageService._loading.next(true)
    this.report = await this.apiService.getReport(code)
    this.storageService._loading.next(false)
  }

  /**
   * Sets fields to send inputs to child components
   * @param files Files to set as active
   */
  sendToDetailedView(files: string[]): void {
    [this.file1, this.file2] = files
  }

  /**
   * Shows code comparison modal
   * @param functions Function names to show comparisons between
   */
  showModal(functions: any): void {
    let fns: string[] = []
    for (let [i, fn] of functions.entries()) {
      let currentFn: string[] = []
      let splitted: string[] = this._code[i].split('\n')
      let hasStart: boolean = false
      for (let line of splitted) {
        if (line.trimLeft().startsWith(`def ${fn}`)) {
          currentFn.push(line)
          hasStart = true
          continue
        }

        if (hasStart) {
          if (line.trimLeft() === line && line.trim() !== '' && line.trim().charAt(0) !== '#') {
            fns.push(currentFn.join('\n'))
            currentFn = []
            break
          } else {
            if (line.trim().charAt(0) !== '#') {
              currentFn.push(line)
            }
          }
        }
      }
      if (currentFn.length !== 0) {
        fns.push(currentFn.join('\n'))
      }
    }

    this.dialog.open(CompareDialogComponent, {
      width: '60%',
      data: fns
    })
  }
}
