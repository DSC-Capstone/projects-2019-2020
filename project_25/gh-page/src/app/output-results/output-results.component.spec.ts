import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OutputResultsComponent } from './output-results.component';

describe('OutputResultsComponent', () => {
  let component: OutputResultsComponent;
  let fixture: ComponentFixture<OutputResultsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OutputResultsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OutputResultsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
