package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.ICastService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cast")
@ComponentScan(basePackageClasses = {ICastService.class})
public class CastRestController extends ORestController<ICastService> {

    @Autowired
    private ICastService castService;

    @Override
    public ICastService getService() {
        return this.castService;
    }

}
