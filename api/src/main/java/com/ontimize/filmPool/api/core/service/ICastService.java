package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface ICastService {

    // CAST
    public EntityResult castQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult castInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult castUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult castDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
