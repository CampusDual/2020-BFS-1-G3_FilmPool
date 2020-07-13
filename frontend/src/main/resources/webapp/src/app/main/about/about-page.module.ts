import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AboutPageRoutingModule } from './about-page-routing.module';
import { AboutPageComponent } from './about-page/about-page.component';
import {SharedModule} from "../../shared/shared.module";
import {OntimizeWebModule} from "ontimize-web-ngx";

@NgModule({
  imports: [
    CommonModule,
    AboutPageRoutingModule,
    SharedModule,
    OntimizeWebModule
  ],
  declarations: [AboutPageComponent]
})
export class AboutPageModule { }
