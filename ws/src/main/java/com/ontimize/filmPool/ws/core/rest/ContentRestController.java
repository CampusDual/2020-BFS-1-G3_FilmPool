package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.db.EntityResult;

import com.ontimize.filmPool.api.core.service.IContentService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/contents")
public class ContentRestController extends ORestController<IContentService> {

    @Autowired
    IContentService iContentService;

    @Override
    public IContentService getService() {
        return this.iContentService;
    }

    @RequestMapping(value = "/latestMovies", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult latestMovieContents(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            return iContentService.latestMovies(columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }

    @RequestMapping(value = "/latestShows", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult latestShowContents(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            return iContentService.latestShows(columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }

    @RequestMapping(value = "/bestMoviesRating", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult bestMoviesRatingContents(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            return iContentService.bestMoviesRating(columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }

    @RequestMapping(value = "/bestShowsRating", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult bestShowsRatingContents(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            return iContentService.bestShowsRating(columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }

    @RequestMapping(value = "/generos", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult generosContents(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            return iContentService.generos(columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }




}