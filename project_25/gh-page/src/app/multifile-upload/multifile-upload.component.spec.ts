import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MultifileUploadComponent } from './multifile-upload.component';

describe('MultifileUploadComponent', () => {
  let component: MultifileUploadComponent;
  let fixture: ComponentFixture<MultifileUploadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MultifileUploadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MultifileUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
