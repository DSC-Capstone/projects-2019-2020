import { Component, OnInit } from '@angular/core';
import { StorageService } from '../storage.service';
import { Unsubscriber } from '../Unsubscriber';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-visualize-root',
  templateUrl: './visualize-root.component.html',
  styleUrls: ['./visualize-root.component.sass']
})
export class VisualizeRootComponent extends Unsubscriber implements OnInit {
  visualizeMode: boolean = true
  loading: boolean = false
  graphData: object = {}

  constructor(private storageService: StorageService, private apiService: ApiService) {
    super()
  }

  /**
   * Sets visualize mode to true
   */
  ngOnInit(): void {
    // this.storageService._loading.next(false)
    this.storageService._visualizeMode.next(true)
    this.subscribeTo(this.storageService._loading, (next: boolean) => Promise.resolve(null).then(() => this.loading = next))
    this.storageService._loading.subscribe
  }

  /**
   * Retrieves visualization JSON and updates datastore
   * @param  code Code to visualize
   * @return      Promise that resolves when method finishes
   */
  async sendCode(code: string): Promise<void> {
    this.storageService._loading.next(true)
    let graph = (await this.apiService.getVisualization(code)).graph
    this.storageService._graphData.next(graph)
    this.storageService._loading.next(false)
  }
}
