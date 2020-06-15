package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IContentService;
import com.ontimize.filmPool.model.core.dao.ContentDao;
import com.ontimize.filmPool.model.core.dao.StudioDao;
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

    @Transactional(rollbackFor = Exception.class)
    public EntityResult contentInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        Map<String, Object> nonContentData = removeNonRelatedData(attrMap, ContentDao.CONTENT_NAME,
                ContentDao.CONTENT_NACIONALITY, ContentDao.CONTENT_POSTER_PATH, ContentDao.CONTENT_PLOT,
                ContentDao.CONTENT_DURATION, ContentDao.CONTENT_RELEASE_DATE);
        this.insertNonRelatedData(nonContentData);
        attrMap.putAll(nonContentData);
        return this.daoHelper.insert(this.contentDao, attrMap);
    }

    @Transactional(rollbackFor = Exception.class)
    public EntityResult contentUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        Map<String, Object> nonContentData = removeNonRelatedData(attrMap, ContentDao.CONTENT_NAME,
                ContentDao.CONTENT_NACIONALITY, ContentDao.CONTENT_POSTER_PATH, ContentDao.CONTENT_PLOT,
                ContentDao.CONTENT_DURATION, ContentDao.CONTENT_RELEASE_DATE);
        this.insertNonRelatedData(nonContentData);
        attrMap.putAll(nonContentData);
        return this.daoHelper.update(this.contentDao, attrMap, keyMap);
    }

    private Map<String, Object> removeNonRelatedData(Map<String, Object> attrMap, String... attrToExclude) {
        HashMap<String, Object> data = new HashMap<String, Object>();
        for (String attr : attrToExclude) {
            if (attrMap.containsKey(attr) && attrMap.get(attr) instanceof String) {
                data.put(attr, attrMap.remove(attr));
            }
        }
        return data;
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

    private void insertNonRelatedData(Map<String, Object> nonContentData) throws OntimizeJEERuntimeException {
        for (java.util.Map.Entry<String, Object> entry : nonContentData.entrySet()) {
            Map<String, Object> data = new HashMap<String, Object>();
            List<String> attr = new ArrayList<String>();
            EntityResult toret, query;
            switch (entry.getKey()) {
                case ContentDao.STUDIO_ID:
                    data.put((String) StudioDao.STUDIO_NAME, entry.getValue());
                    attr.add((String) StudioDao.STUDIO_ID);
                    query = this.contentService.studioQuery(data, attr);
                    if (query.calculateRecordNumber() > 0) {
                        entry.setValue((Object) query.getRecordValues(0).get(StudioDao.STUDIO_ID));
                    } else {
                        toret = this.contentService.studioInsert(data);
                        entry.setValue((Object) toret.get(StudioDao.STUDIO_ID));
                    }
                    break;
            }
        }
    }
}