package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.filmPool.api.core.service.IChapterService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/chapters")
@ComponentScan(basePackageClasses = {com.ontimize.filmPool.api.core.service.IChapterService.class})
public class ChapterRestController extends ORestController<IChapterService> {

    @Autowired IChapterService iChapterService;

    @Override
    public IChapterService getService() {
        return this.iChapterService;
    }
}
