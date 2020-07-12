import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { FaqsPageRoutingModule } from './faqs-page-routing.module';
import { FaqsPageComponent } from './faqs-page/faqs-page.component';
import {SharedModule} from "../../shared/shared.module";
import {OntimizeWebModule} from "ontimize-web-ngx";

@NgModule({
  imports: [
    CommonModule,
    FaqsPageRoutingModule,
    SharedModule,
    OntimizeWebModule
  ],
  declarations: [
      FaqsPageComponent
  ]
})
export class FaqsPageModule { }
