import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {NowInCinemasComponent} from "./now-in-cinemas.component";

const routes: Routes = [
  {
    path: '',
    component: NowInCinemasComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NowInCinemasRoutingModule { }
