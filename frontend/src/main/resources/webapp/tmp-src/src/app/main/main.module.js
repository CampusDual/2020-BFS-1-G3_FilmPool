"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var shared_module_1 = require("../shared/shared.module");
var main_component_1 = require("./main.component");
var main_routing_module_1 = require("./main-routing.module");
var MainModule = /** @class */ (function () {
    function MainModule() {
    }
    MainModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [
                        shared_module_1.SharedModule,
                        ontimize_web_ngx_1.OntimizeWebModule,
                        main_routing_module_1.MainRoutingModule
                    ],
                    declarations: [
                        main_component_1.MainComponent
                    ]
                },] },
    ];
    return MainModule;
}());
exports.MainModule = MainModule;
//# sourceMappingURL=main.module.js.map