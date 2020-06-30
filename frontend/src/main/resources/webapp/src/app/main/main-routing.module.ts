import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';

import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
import {MoviesModule} from "./movies/movies.module";
import {ShowsModule} from "./shows/shows.module";
import {ReleasesModule} from "./releases/releases.module";

export function loadHomeModule() {
  return HomeModule;
}
export function loadMoviesModule() {
  return MoviesModule
}
export function loadShowsModule() {
  return ShowsModule
}
export function loadReleasesModule() {
  return ReleasesModule
}

export const routes: Routes = [
  {
    path: '',
    component: MainComponent,
    canActivate: [AuthGuardService],
    children: [
      { path: '', redirectTo: 'home', pathMatch: 'full' },
      {
        path: 'home',
        loadChildren: loadHomeModule
      },
      {
        path: 'movies',
        loadChildren: loadMoviesModule
      },
      {
        path: 'shows',
        loadChildren: loadShowsModule
      },
      {
        path: 'releases',
        loadChildren: loadReleasesModule
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
