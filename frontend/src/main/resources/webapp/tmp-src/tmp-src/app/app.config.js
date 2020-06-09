"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var app_services_config_1 = require("./shared/app.services.config");
var app_menu_config_1 = require("./shared/app.menu.config");
exports.CONFIG = {
    // The base path of the URL used by app services.
    apiEndpoint: 'http://localhost:33333',
    bundle: {
        path: 'bundle'
    },
    // Application identifier. Is the unique package identifier of the app.
    // It is used when storing or managing temporal data related with the app.
    // By default is set as 'ontimize-web-uuid'.
    uuid: 'com.ontimize.web.ngx.jee.seed',
    // Title of the app
    title: 'JEE seed',
    //  Language of the application.
    locale: 'en',
    // The service type used (Ontimize REST standart, Ontimize REST JEE
    // or custom implementation) in the whole application.
    serviceType: 'OntimizeEE',
    // Configuration parameters of application services.
    servicesConfiguration: app_services_config_1.SERVICE_CONFIG,
    appMenuConfiguration: app_menu_config_1.MENU_CONFIG,
    applicationLocales: ['es', 'en']
};
//# sourceMappingURL=app.config.js.map