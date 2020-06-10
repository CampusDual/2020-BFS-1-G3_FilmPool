package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IContenidosService;
import com.ontimize.filmPool.model.core.dao.ContentDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("ContentService")
@Lazy

public class ContentService implements IContenidosService {

    @Autowired
    private ContentDao contentDao;
    @Autowired
    private DefaultOntimizeDaoHelper daoHelper;

    public EntityResult contentQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.contentDao, keyMap, attrList);
    }

    @Override
    public EntityResult contentInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.contentDao,attrMap);
    }

    @Override
    public EntityResult contentUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.contentDao,attrMap,keyMap);
    }

    @Override
    public EntityResult contentDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.contentDao,keyMap);
    }

    public EntityResult newMovies()
            throws OntimizeJEERuntimeException {
        Map<String, Object> keyMap= new HashMap<String, Object>();
        List<String> attrList = Arrays.asList(contentDao.CONTENIDO_NAME,contentDao.CONTENIDO_DURATION,contentDao.CONTENIDO_ID);
        return this.daoHelper.query(this.contentDao, keyMap, attrList,"newMovies");
    }

    public EntityResult newShows()
            throws OntimizeJEERuntimeException {
        Map<String, Object> keyMap= new HashMap<String, Object>();
        List<String> attrList = Arrays.asList(contentDao.CONTENIDO_NAME,contentDao.CONTENIDO_DURATION,contentDao.CONTENIDO_ID);
        return this.daoHelper.query(this.contentDao, keyMap, attrList,"newShows");
    }

}