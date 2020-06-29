import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MoviesRoutingModule } from './movies-routing.module';
import { MovieDetailsComponent } from './movie-details/movie-details.component';
import { MoviePosterComponent } from './movie-poster/movie-poster.component';
import { MovieTrailerComponent } from './movie-trailer/movie-trailer.component';

@NgModule({
  imports: [
    CommonModule,
    MoviesRoutingModule
  ],
  declarations: [MovieDetailsComponent, MoviePosterComponent, MovieTrailerComponent]
})
export class MoviesModule { }
