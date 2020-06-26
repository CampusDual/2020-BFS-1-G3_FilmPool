package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IRepartoService {

    // REPARTO
    public EntityResult repartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult repartoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult repartoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult repartoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
