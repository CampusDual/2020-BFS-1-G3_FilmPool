"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var app_config_1 = require("./app.config");
var app_component_1 = require("./app.component");
var app_routing_module_1 = require("./app-routing.module");
// Standard providers...
// Defining custom providers (if needed)...
exports.customProviders = [];
var ɵ0 = app_config_1.CONFIG;
exports.ɵ0 = ɵ0;
var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [
                        ontimize_web_ngx_1.ONTIMIZE_MODULES,
                        ontimize_web_ngx_1.OntimizeWebModule,
                        app_routing_module_1.AppRoutingModule
                    ],
                    declarations: [
                        app_component_1.AppComponent
                    ],
                    bootstrap: [
                        app_component_1.AppComponent
                    ],
                    providers: [
                        { provide: ontimize_web_ngx_1.APP_CONFIG, useValue: ɵ0 }
                    ].concat(ontimize_web_ngx_1.ONTIMIZE_PROVIDERS, exports.customProviders),
                },] },
    ];
    return AppModule;
}());
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map