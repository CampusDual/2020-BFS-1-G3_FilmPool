package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.IGenresService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/genres")
@ComponentScan(basePackageClasses = { com.ontimize.filmPool.api.core.service.IGenresService.class })
public class GenresRestController extends ORestController<IGenresService> {

    @Autowired
    private IGenresService genresService;

    @Override
    public IGenresService getService() {
        return this.genresService;
    }

}
