import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {MovieDetailsComponent} from "../movies/movie-details/movie-details.component";
import {CastComponent} from "./cast.component";

const routes: Routes = [
  {
    path: ':cast_id',
    component: CastComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CastRoutingModule { }
