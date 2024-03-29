import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';
import { FaqsPageModule } from './faqs/faqs-page.module';
import { PrivacyPageModule } from './privacy/privacy-page.module';
import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
import {MoviesModule} from "./movies/movies.module";
import {ShowsModule} from "./shows/shows.module";
import {ReleasesModule} from "./releases/releases.module";
import {CastModule} from "./cast/cast.module";
import { AboutPageModule } from './about/about-page.module';
import {NowInCinemasModule} from "./now-in-cinemas/now-in-cinemas.module";
import {GenresModule} from "./genres/genres.module";

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
export function loadCastModule() {
  return CastModule
}
export function loadFaqsModule() {
  return FaqsPageModule
}
export function loadAboutModule() {
  return AboutPageModule
}

export function loadPrivacyModule() {
  return PrivacyPageModule
}
export function loadLiveModule() {
  return NowInCinemasModule
}
export function loadGenresModule() {
  return GenresModule
}
export const routes: Routes = [
  {
    path: '',
    component: MainComponent,
   // canActivate: [AuthGuardService],
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
      },
      {
        path: 'cast',
        loadChildren: loadCastModule
      },
      {
        path: 'faqs',
        loadChildren: loadFaqsModule
      },
      {

        path: 'privacy',
        loadChildren: loadPrivacyModule
      },
      {
        path: 'about',
        loadChildren: loadAboutModule
      },
      {
        path: 'live',
        loadChildren: loadLiveModule
      },
      {
        path: 'genres',
        loadChildren: loadGenresModule
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
