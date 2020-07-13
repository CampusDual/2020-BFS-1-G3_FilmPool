import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { NowInCinemasRoutingModule } from './now-in-cinemas-routing.module';
import {NowInCinemasComponent} from "./now-in-cinemas.component";
import {MatGridListModule} from "@angular/material/grid-list";

@NgModule({
  imports: [
    CommonModule,
    NowInCinemasRoutingModule,
    MatGridListModule
  ],
  declarations: [
      NowInCinemasComponent
  ]
})
export class NowInCinemasModule { }
