package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IContenidosService;

import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/contents")
public class ContentRestController extends ORestController<IContenidosService> {

    @Autowired
    IContenidosService iContenidosService;

    @Override
    public IContenidosService getService() {
        return this.iContenidosService;
    }

    @RequestMapping(value = "newMovies", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getNewMovies(@RequestBody Map<String, Object> req) {
        return iContenidosService.newMovies();
    }

    @RequestMapping(value = "newShows", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getNewShows(@RequestBody Map<String, Object> req) {
        return iContenidosService.newShows();
    }

}