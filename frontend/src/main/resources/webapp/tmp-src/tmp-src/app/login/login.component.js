"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var forms_1 = require("@angular/forms");
var router_1 = require("@angular/router");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var LoginComponent = /** @class */ (function () {
    function LoginComponent(actRoute, zone, router, navigation, loginService, injector) {
        var _this = this;
        this.actRoute = actRoute;
        this.zone = zone;
        this.navigation = navigation;
        this.loginService = loginService;
        this.injector = injector;
        this.sessionExpired = false;
        this.router = router;
        var qParamObs = this.actRoute.queryParams;
        qParamObs.subscribe(function (params) {
            if (params) {
                var isDetail = params['session-expired'];
                if (isDetail === 'true') {
                    _this.sessionExpired = true;
                }
                else {
                    _this.sessionExpired = false;
                }
            }
        });
    }
    LoginComponent.prototype.ngOnInit = function () {
        this.loginService.sessionExpired();
        this.navigation.setVisible(false);
        var userCtrl = new forms_1.FormControl('', forms_1.Validators.required);
        var pwdCtrl = new forms_1.FormControl('', forms_1.Validators.required);
        this.loginForm = new forms_1.FormGroup({});
        this.loginForm.addControl('username', userCtrl);
        this.loginForm.addControl('password', pwdCtrl);
        if (this.loginService.isLoggedIn()) {
            this.router.navigate(['../'], { relativeTo: this.actRoute });
        }
    };
    LoginComponent.prototype.login = function () {
        var _this = this;
        if (!this.loginForm.valid) {
            alert('Campos no válidos');
        }
        var userName = this.loginForm.value['username'];
        var password = this.loginForm.value['password'];
        if (userName && userName.length > 0 && password && password.length > 0) {
            var self_1 = this;
            this.loginService.login(userName, password).subscribe(function () {
                self_1.sessionExpired = false;
                self_1.router.navigate(['../'], { relativeTo: _this.actRoute });
            }, this.handleError);
        }
    };
    LoginComponent.prototype.handleError = function (error) {
        switch (error.status) {
            case 401:
                console.error('Email or password is wrong.');
                break;
            default: break;
        }
    };
    LoginComponent.decorators = [
        { type: core_1.Component, args: [{
                    selector: 'login',
                    styleUrls: ['./login.component.scss'],
                    templateUrl: './login.component.html'
                },] },
    ];
    /** @nocollapse */
    LoginComponent.ctorParameters = function () { return [
        { type: router_1.ActivatedRoute },
        { type: core_1.NgZone },
        { type: router_1.Router },
        { type: ontimize_web_ngx_1.NavigationService, decorators: [{ type: core_1.Inject, args: [ontimize_web_ngx_1.NavigationService,] }] },
        { type: ontimize_web_ngx_1.LoginService, decorators: [{ type: core_1.Inject, args: [ontimize_web_ngx_1.LoginService,] }] },
        { type: core_1.Injector }
    ]; };
    return LoginComponent;
}());
exports.LoginComponent = LoginComponent;
//# sourceMappingURL=login.component.js.map