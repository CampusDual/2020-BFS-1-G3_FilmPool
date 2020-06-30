import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ShowsRoutingModule } from './shows-routing.module';
import { ShowPosterComponent } from './show-poster/show-poster.component';
import { ShowDetailsComponent } from './show-details/show-details.component';
import { ShowTrailerComponent } from './show-trailer/show-trailer.component';
import {ShowsHomeComponent} from "./shows-home/shows-home.component";
import {OntimizeWebModule} from "ontimize-web-ngx";
import {SharedModule} from "../../shared/shared.module";

@NgModule({
  imports: [
    CommonModule,
    ShowsRoutingModule,
    OntimizeWebModule,
    SharedModule
  ],
  declarations: [ShowPosterComponent, ShowDetailsComponent, ShowTrailerComponent,ShowsHomeComponent]
})
export class ShowsModule { }
