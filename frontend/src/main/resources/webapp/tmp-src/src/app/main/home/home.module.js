"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var shared_module_1 = require("../../shared/shared.module");
var home_component_1 = require("./home.component");
var home_routing_module_1 = require("./home-routing.module");
var HomeModule = /** @class */ (function () {
    function HomeModule() {
    }
    HomeModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [
                        shared_module_1.SharedModule,
                        ontimize_web_ngx_1.OntimizeWebModule,
                        home_routing_module_1.HomeRoutingModule
                    ],
                    declarations: [
                        home_component_1.HomeComponent
                    ]
                },] },
    ];
    return HomeModule;
}());
exports.HomeModule = HomeModule;
//# sourceMappingURL=home.module.js.map