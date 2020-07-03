import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MoviesRoutingModule } from './movies-routing.module';
import { MovieDetailsComponent } from './movie-details/movie-details.component';
import { MoviePosterComponent } from './movie-poster/movie-poster.component';
import { MovieTrailerComponent } from './movie-trailer/movie-trailer.component';
import {MoviesHomeComponent} from "./movies-home/movies-home.component";
import {SharedModule} from "../../shared/shared.module";
import {OntimizeWebModule} from "ontimize-web-ngx";

@NgModule({
  imports: [
    CommonModule,
    MoviesRoutingModule,
    SharedModule,
    OntimizeWebModule
  ],
  declarations: [
    MovieDetailsComponent, 
    MoviePosterComponent, 
    MovieTrailerComponent,
    MoviesHomeComponent]
})
export class MoviesModule { }
