package com.ontimize.filmPool.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IChapterService {

    public EntityResult chapterQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult chapterInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult chapterUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult chapterDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
