import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {SharedModule} from "../../shared/shared.module";
import {OntimizeWebModule} from "ontimize-web-ngx";

import { PrivacyPageRoutingModule } from './privacy-page-routing.module';
import { PrivacyPageComponent } from './privacy-page/privacy-page.component';

@NgModule({
  imports: [
    CommonModule,
    PrivacyPageRoutingModule,
    SharedModule,
    OntimizeWebModule
  ],
  declarations: [PrivacyPageComponent]
})
export class PrivacyPageModule { }
