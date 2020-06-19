import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StorageService {
  public readonly _codeInput1: BehaviorSubject<string> = new BehaviorSubject<string>('')
  public readonly _codeInput2: BehaviorSubject<string> = new BehaviorSubject<string>('')

  public readonly _graphData: BehaviorSubject<object> = new BehaviorSubject<object>({})

  public readonly _visualizeMode: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false)
  public readonly _loading: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false)

  constructor() { }
}
