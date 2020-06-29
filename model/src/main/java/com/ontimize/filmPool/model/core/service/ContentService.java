package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IContentService;
import com.ontimize.filmPool.model.core.dao.ContentDao;
import com.ontimize.filmPool.model.core.dao.StudioDao;
import com.ontimize.filmPool.model.core.dao.GenresDao;
import com.ontimize.filmPool.model.core.dao.RepartoDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service("ContentService")
@Lazy

public class ContentService implements IContentService {

    @Autowired
    private ContentDao contentDao;
    @Autowired
    private DefaultOntimizeDaoHelper daoHelper;
    private ContentService contentService;

    public EntityResult contentQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.contentDao, keyMap, attrList);
    }

    public EntityResult contentInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {

        return this.daoHelper.insert(this.contentDao, attrMap);
    }

    public EntityResult contentUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {

        return this.daoHelper.update(this.contentDao, attrMap, keyMap);
    }

    public EntityResult contentDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.contentDao, keyMap);
    }

    public EntityResult latestMovies(List<String> columns)
            throws OntimizeJEERuntimeException {
        Map<String, Object> keyMap = new HashMap<String, Object>();
        return this.daoHelper.query(this.contentDao, keyMap, columns, "latestMovies");
    }

    public EntityResult latestShows(List<String> columns)
            throws OntimizeJEERuntimeException {
        Map<String, Object> keyMap = new HashMap<String, Object>();
        return this.daoHelper.query(this.contentDao, keyMap, columns, "latestShows");
    }

}