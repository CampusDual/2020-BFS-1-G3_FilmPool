"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var login_module_1 = require("./login/login.module");
var main_module_1 = require("./main/main.module");
function loadLoginModule() {
    return login_module_1.LoginModule;
}
exports.loadLoginModule = loadLoginModule;
function loadMainModule() {
    return main_module_1.MainModule;
}
exports.loadMainModule = loadMainModule;
exports.routes = [
    { path: 'main', loadChildren: loadMainModule },
    { path: 'login', loadChildren: loadLoginModule },
    { path: '', redirectTo: 'main', pathMatch: 'full' }
];
var opt = {
    enableTracing: false
    // true if you want to print navigation routes
};
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [router_1.RouterModule.forRoot(exports.routes, opt)],
                    exports: [router_1.RouterModule],
                    providers: []
                },] },
    ];
    return AppRoutingModule;
}());
exports.AppRoutingModule = AppRoutingModule;
//# sourceMappingURL=app-routing.module.js.map