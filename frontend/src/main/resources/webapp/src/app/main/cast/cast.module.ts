import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CastRoutingModule } from './cast-routing.module';
import {SharedModule} from "../../shared/shared.module";
import {CastComponent} from "./cast.component";
import {OntimizeWebModule} from "ontimize-web-ngx";

@NgModule({
  imports: [
    CommonModule,
    CastRoutingModule,
    SharedModule,
    OntimizeWebModule
  ],
  declarations: [
      CastComponent
  ]
})
export class CastModule { }
