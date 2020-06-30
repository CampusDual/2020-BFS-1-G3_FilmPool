import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ReleasesHomeComponent} from "./releases-home/releases-home.component";

const routes: Routes = [
    {
     path:'',
     component: ReleasesHomeComponent
    }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ReleasesRoutingModule { }
