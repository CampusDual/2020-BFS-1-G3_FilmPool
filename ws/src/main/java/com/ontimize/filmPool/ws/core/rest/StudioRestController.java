package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.IChapterService;
import com.ontimize.filmPool.api.core.service.IStudioService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/studios")
public class StudioRestController extends ORestController<IStudioService> {

    @Autowired
    IStudioService iStudioService;

    @Override
    public IStudioService getService() {
       return this.iStudioService;
    }
}
