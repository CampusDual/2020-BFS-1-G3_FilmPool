package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface ISeasonService {

    public EntityResult seasonQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult seasonInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult seasonUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult seasonDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
