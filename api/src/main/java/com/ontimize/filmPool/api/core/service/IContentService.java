package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IContentService {

    public EntityResult contentQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult contentInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult contentUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult contentDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult latestMovies(List<String> columns) throws OntimizeJEERuntimeException;
    public EntityResult latestShows(List<String> columns) throws OntimizeJEERuntimeException;
}