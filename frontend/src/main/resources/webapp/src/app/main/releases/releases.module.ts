import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ReleasesRoutingModule } from './releases-routing.module';
import { ListTrailersComponent } from './list-trailers/list-trailers.component';
import { CalendarComponent } from './calendar/calendar.component';
import {ReleasesHomeComponent} from "./releases-home/releases-home.component";
import {OntimizeWebModule} from "ontimize-web-ngx";
import {SharedModule} from "../../shared/shared.module";

@NgModule({
  imports: [
    CommonModule,
    ReleasesRoutingModule,
    OntimizeWebModule,
    SharedModule
  ],
  declarations: [ListTrailersComponent, CalendarComponent, ReleasesHomeComponent]
})
export class ReleasesModule { }
