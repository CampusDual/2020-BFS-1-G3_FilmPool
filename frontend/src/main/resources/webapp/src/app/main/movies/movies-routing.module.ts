import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {MoviesHomeComponent} from "./movies-home/movies-home.component";
import { MovieDetailsComponent } from './movie-details/movie-details.component';
import { from } from 'rxjs';

const routes: Routes = [
  {
    path: '',
    component: MoviesHomeComponent
  },
 
  {
    path: ":content_id",
    component: MovieDetailsComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MoviesRoutingModule { }
