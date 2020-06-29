import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx'
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
  HeaderComponent,
  FooterComponent],
  exports: [
    CommonModule,
    HeaderComponent,
    FooterComponent,
  ]
})
export class SharedModule { }
