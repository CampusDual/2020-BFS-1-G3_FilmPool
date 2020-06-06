package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.ISeasonService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/seasons")
@ComponentScan(basePackageClasses = {com.ontimize.filmPool.api.core.service.ISeasonService.class})
public class SeasonRestController extends ORestController<ISeasonService> {

    @Autowired ISeasonService iSeasonService;



    @Override
    public ISeasonService getService() {
        return this.iSeasonService;
    }
}
