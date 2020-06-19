import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { VisualizeRootComponent } from './visualize-root/visualize-root.component';
import { SimilarityRootComponent } from './similarity-root/similarity-root.component';
import { HomepageComponent } from './homepage/homepage.component';
import { CheckerRootComponent } from './checker-root/checker-root.component';


const routes: Routes = [
  {
    path: '',
    component: HomepageComponent
  }, {
    path: 'visualize',
    component: VisualizeRootComponent
  }, {
    path: 'similarity',
    component: SimilarityRootComponent
  }, {
    path: 'check',
    component: CheckerRootComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
