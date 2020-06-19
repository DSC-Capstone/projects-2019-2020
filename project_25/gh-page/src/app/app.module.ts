import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { MatInputModule } from '@angular/material/input';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatButtonModule } from '@angular/material/button';
import { MatStepperModule } from '@angular/material/stepper';
import { MatCardModule } from '@angular/material/card';
import { MaterialFileInputModule } from 'ngx-material-file-input';
import { MatSelectModule } from '@angular/material/select';
import { MatTableModule } from '@angular/material/table';
import { CodeInputComponent } from './code-input/code-input.component';
import { OutputResultsComponent } from './output-results/output-results.component';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { VisualizeRootComponent } from './visualize-root/visualize-root.component';
import { SimilarityRootComponent } from './similarity-root/similarity-root.component';
import { MatToolbarModule } from '@angular/material/toolbar';
import { DetailedViewComponent } from './detailed-view/detailed-view.component';
import { HomepageComponent } from './homepage/homepage.component';
import { MatSortModule } from '@angular/material/sort';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { CheckerRootComponent } from './checker-root/checker-root.component';
import { MultifileUploadComponent } from './multifile-upload/multifile-upload.component';
import { MatDialogModule } from '@angular/material/dialog';
import { PasswordDialogComponent } from './password-dialog/password-dialog.component';
import { CompareDialogComponent } from './compare-dialog/compare-dialog.component';
import { HttpClientModule } from '@angular/common/http';
import { CommonModule } from '@angular/common'

@NgModule({
  declarations: [
    AppComponent,
    CodeInputComponent,
    OutputResultsComponent,
    VisualizeRootComponent,
    SimilarityRootComponent,
    DetailedViewComponent,
    HomepageComponent,
    CheckerRootComponent,
    MultifileUploadComponent,
    PasswordDialogComponent,
    CompareDialogComponent
  ],
  imports: [
    BrowserModule,
    CommonModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatInputModule,
    MatGridListModule,
    MatButtonModule,
    FormsModule,
    MatStepperModule,
    MatCardModule,
    MaterialFileInputModule,
    MatSelectModule,
    MatTableModule,
    MatProgressSpinnerModule,
    MatToolbarModule,
    MatSortModule,
    MatSnackBarModule,
    MatDialogModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
