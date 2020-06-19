import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SimilarityRootComponent } from './similarity-root.component';

describe('SimilarityRootComponent', () => {
  let component: SimilarityRootComponent;
  let fixture: ComponentFixture<SimilarityRootComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SimilarityRootComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SimilarityRootComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
