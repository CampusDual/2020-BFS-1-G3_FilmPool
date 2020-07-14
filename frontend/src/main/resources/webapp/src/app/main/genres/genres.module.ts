import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { GenresRoutingModule } from './genres-routing.module';
import { GenresComponent } from './genres.component';
import {MatGridListModule} from "@angular/material/grid-list";
import {FormsModule} from "@angular/forms";

@NgModule({
    imports: [
        CommonModule,
        GenresRoutingModule,
        MatGridListModule,
        FormsModule
    ],
  declarations: [GenresComponent]
})
export class GenresModule { }
