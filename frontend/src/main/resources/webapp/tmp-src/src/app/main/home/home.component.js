"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var HomeComponent = /** @class */ (function () {
    function HomeComponent(router, actRoute) {
        this.router = router;
        this.actRoute = actRoute;
    }
    HomeComponent.prototype.ngOnInit = function () {
    };
    HomeComponent.prototype.navigate = function () {
        this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
    };
    HomeComponent.decorators = [
        { type: core_1.Component, args: [{
                    selector: 'home',
                    templateUrl: './home.component.html',
                    styleUrls: ['./home.component.scss']
                },] },
    ];
    /** @nocollapse */
    HomeComponent.ctorParameters = function () { return [
        { type: router_1.Router },
        { type: router_1.ActivatedRoute }
    ]; };
    return HomeComponent;
}());
exports.HomeComponent = HomeComponent;
//# sourceMappingURL=home.component.js.map