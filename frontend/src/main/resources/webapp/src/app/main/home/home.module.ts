import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { SharedModule } from '../../shared/shared.module';
import { HomeComponent } from './home.component';
import { HomeRoutingModule } from './home-routing.module';
import { ListMoviesComponent } from './list-movies/list-movies.component';
import { ListShowsComponent } from './list-shows/list-shows.component';

@NgModule({
  imports: [
    SharedModule,
    OntimizeWebModule,
    HomeRoutingModule
  ],
  declarations: [
    HomeComponent,
    ListMoviesComponent,
    ListShowsComponent
  ]
})
export class HomeModule { }
