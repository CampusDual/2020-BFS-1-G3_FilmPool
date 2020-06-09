package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IContentService {

    public EntityResult contenidoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult contenidoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult contenidoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult contenidoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
