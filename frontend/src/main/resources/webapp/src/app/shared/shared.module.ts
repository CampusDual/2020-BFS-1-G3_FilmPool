import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx'
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { FinderComponent } from './finder/finder.component';
import { CastComponent } from './cast/cast.component';
import { RatingComponent } from './rating/rating.component';
import {RouterModule} from "@angular/router";


@NgModule({
    imports: [
        OntimizeWebModule,
        RouterModule
    ],
  declarations: [
  HeaderComponent,
  FooterComponent,
  FinderComponent,
  CastComponent,
  RatingComponent],
  exports: [
    CommonModule,
    HeaderComponent,
    FooterComponent,
    CastComponent
  ]
})
export class SharedModule { }
