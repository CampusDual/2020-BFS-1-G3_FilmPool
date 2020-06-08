package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IStudioService {

    public EntityResult studioQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult studioInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult studioUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult studioDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
