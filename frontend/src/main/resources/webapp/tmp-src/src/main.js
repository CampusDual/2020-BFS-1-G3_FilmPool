"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
require("hammerjs");
var core_1 = require("@angular/core");
var platform_browser_dynamic_1 = require("@angular/platform-browser-dynamic");
var app_module_1 = require("./app/app.module");
var environment_1 = require("./environments/environment");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
if (environment_1.environment.production) {
    core_1.enableProdMode();
}
var promise = platform_browser_dynamic_1.platformBrowserDynamic().bootstrapModule(app_module_1.AppModule);
promise.then(ontimize_web_ngx_1.ontimizePostBootstrap).catch(function (err) {
    console.error(err.message);
});
//# sourceMappingURL=main.js.map