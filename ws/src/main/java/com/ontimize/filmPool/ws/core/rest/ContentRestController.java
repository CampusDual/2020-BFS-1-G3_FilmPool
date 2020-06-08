package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.IContenidosService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/contenidos")
public class ContentRestController extends ORestController<IContenidosService> {

    @Autowired
    IContenidosService iContenidosService;
    @Override
    public IContenidosService getService() {
        return this.iContenidosService;
    }
}
