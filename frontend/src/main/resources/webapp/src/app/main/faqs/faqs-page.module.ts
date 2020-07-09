import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { FaqsPageRoutingModule } from './faqs-page-routing.module';
import { FaqsPageComponent } from './faqs-page/faqs-page.component';

@NgModule({
  imports: [
    CommonModule,
    FaqsPageRoutingModule
  ],
  declarations: [FaqsPageComponent]
})
export class FaqsPageModule { }
