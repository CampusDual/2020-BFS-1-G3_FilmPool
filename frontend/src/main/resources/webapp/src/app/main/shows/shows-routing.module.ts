import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ShowsHomeComponent} from "./shows-home/shows-home.component";

const routes: Routes = [
  {
    path: '',
    component: ShowsHomeComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ShowsRoutingModule { }
