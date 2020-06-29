import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ShowsRoutingModule } from './shows-routing.module';
import { ShowPosterComponent } from './show-poster/show-poster.component';
import { ShowDetailsComponent } from './show-details/show-details.component';
import { ShowTrailerComponent } from './show-trailer/show-trailer.component';

@NgModule({
  imports: [
    CommonModule,
    ShowsRoutingModule
  ],
  declarations: [ShowPosterComponent, ShowDetailsComponent, ShowTrailerComponent]
})
export class ShowsModule { }
