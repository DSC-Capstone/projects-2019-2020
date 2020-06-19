import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VisualizeRootComponent } from './visualize-root.component';

describe('VisualizeRootComponent', () => {
  let component: VisualizeRootComponent;
  let fixture: ComponentFixture<VisualizeRootComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VisualizeRootComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VisualizeRootComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
