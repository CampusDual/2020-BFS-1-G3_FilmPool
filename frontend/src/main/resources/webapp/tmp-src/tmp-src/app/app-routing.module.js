"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
exports.routes = [
    { path: 'main', loadChildren: './main/main.module#MainModule' },
    { path: 'login', loadChildren: './login/login.module#LoginModule' },
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