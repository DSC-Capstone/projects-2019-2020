import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CheckerRootComponent } from './checker-root.component';

describe('CheckerRootComponent', () => {
  let component: CheckerRootComponent;
  let fixture: ComponentFixture<CheckerRootComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CheckerRootComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CheckerRootComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
