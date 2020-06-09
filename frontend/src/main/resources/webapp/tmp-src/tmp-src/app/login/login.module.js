"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var login_component_1 = require("./login.component");
var login_routing_module_1 = require("./login-routing.module");
var shared_module_1 = require("../shared/shared.module");
var LoginModule = /** @class */ (function () {
    function LoginModule() {
    }
    LoginModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [
                        shared_module_1.SharedModule,
                        ontimize_web_ngx_1.OntimizeWebModule,
                        login_routing_module_1.LoginRoutingModule
                    ],
                    declarations: [
                        login_component_1.LoginComponent
                    ]
                },] },
    ];
    return LoginModule;
}());
exports.LoginModule = LoginModule;
//# sourceMappingURL=login.module.js.map