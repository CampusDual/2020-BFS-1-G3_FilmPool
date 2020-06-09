package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IContenidosService;
import com.ontimize.filmPool.model.core.dao.ContenidosDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("ContentService")
@Lazy

public class ContenidosService implements IContenidosService {

    @Autowired
    private ContenidosDao contenidosDao;
    @Autowired
    private DefaultOntimizeDaoHelper daoHelper;

    public EntityResult contentQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.contenidosDao, keyMap, attrList);
    }

    @Override
    public EntityResult contentInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.contenidosDao,attrMap);
    }

    @Override
    public EntityResult contentUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.contenidosDao,attrMap,keyMap);
    }

    @Override
    public EntityResult contentDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.contenidosDao,keyMap);
    }



}