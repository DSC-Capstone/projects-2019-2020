import { Subscription, BehaviorSubject } from 'rxjs'
import { OnDestroy, Component } from '@angular/core'

@Component({
  selector: 'unsubscriber',
  template: '<div></div>'
})
export class Unsubscriber implements OnDestroy {
  protected constructor() {}

  private subscriptions: Subscription[] = []

  /**
   * Subscribes to a BehaviorSubject
   * @param  subject BehaviorSubject to subscribe to
   * @param  fn      Function to call
   */
   protected subscribeTo(subject: BehaviorSubject<any>, fn: any): void {
    this.subscriptions.push(subject.subscribe(fn))
  }

  /**
   * Unsubscribes from all subscriptions
   */
  ngOnDestroy(): void {
    for (let sub of this.subscriptions) {
      sub.unsubscribe()
    }
  }
}
