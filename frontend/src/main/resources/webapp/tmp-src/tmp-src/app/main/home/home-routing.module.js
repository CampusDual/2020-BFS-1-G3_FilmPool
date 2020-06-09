"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var home_component_1 = require("./home.component");
var routes = [
    {
        path: '',
        component: home_component_1.HomeComponent
    }
];
var HomeRoutingModule = /** @class */ (function () {
    function HomeRoutingModule() {
    }
    HomeRoutingModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [router_1.RouterModule.forChild(routes)],
                    exports: [router_1.RouterModule]
                },] },
    ];
    return HomeRoutingModule;
}());
exports.HomeRoutingModule = HomeRoutingModule;
//# sourceMappingURL=home-routing.module.js.map