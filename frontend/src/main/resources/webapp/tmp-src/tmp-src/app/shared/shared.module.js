"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var ontimize_web_ngx_1 = require("ontimize-web-ngx");
var common_1 = require("@angular/common");
var SharedModule = /** @class */ (function () {
    function SharedModule() {
    }
    SharedModule.decorators = [
        { type: core_1.NgModule, args: [{
                    imports: [
                        ontimize_web_ngx_1.OntimizeWebModule
                    ],
                    declarations: [],
                    exports: [
                        common_1.CommonModule
                    ]
                },] },
    ];
    return SharedModule;
}());
exports.SharedModule = SharedModule;
//# sourceMappingURL=shared.module.js.map