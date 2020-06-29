import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ReleasesRoutingModule } from './releases-routing.module';
import { ListTrailersComponent } from './list-trailers/list-trailers.component';
import { CalendarComponent } from './calendar/calendar.component';

@NgModule({
  imports: [
    CommonModule,
    ReleasesRoutingModule
  ],
  declarations: [ListTrailersComponent, CalendarComponent]
})
export class ReleasesModule { }
