import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx'
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { FinderComponent } from './finder/finder.component';
import {RouterModule} from "@angular/router";
import {AutocompleteLibModule} from "angular-ng-autocomplete";
import {GenresFilterComponent} from "./genres-filter/genres-filter.component";


@NgModule({
    imports: [
        OntimizeWebModule,
        RouterModule,
        AutocompleteLibModule
    ],
    declarations: [
        HeaderComponent,
        FooterComponent,
        FinderComponent,
        GenresFilterComponent,
        GenresFilterComponent
    ],

    exports: [
        CommonModule,
        HeaderComponent,
        FooterComponent,
        FinderComponent,
        GenresFilterComponent
    ]

})
export class SharedModule { }
