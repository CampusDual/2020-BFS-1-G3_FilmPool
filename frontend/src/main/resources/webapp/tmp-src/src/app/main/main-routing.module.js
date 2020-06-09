"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var main_component_1 = require("./main.component");
var home_module_1 = require("./home/home.module");
function loadHomeModule() {
    return home_module_1.HomeModule;
}
exports.loadHomeModule = loadHomeModule;
exports.routes = [
    {
        path: '',
        component: main_component_1.MainComponent,
        canActivate: [ontimize_web_ngx_1.AuthGuardService],
        children: [
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            {
                path: 'home',
                loadChildren: loadHomeModule
            }
        ]
    }
];
var MainRoutingModule = /** @class */ (function () {
    function MainRoutingModule() {
    }
    MainRoutingModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [router_1.RouterModule.forChild(exports.routes)],
                    exports: [router_1.RouterModule]
                },] },
    ];
    return MainRoutingModule;
}());
exports.MainRoutingModule = MainRoutingModule;
//# sourceMappingURL=main-routing.module.js.map