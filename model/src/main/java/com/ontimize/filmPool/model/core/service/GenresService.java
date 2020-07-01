package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.IGenresService;
import com.ontimize.filmPool.model.core.dao.GenresDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("GenresService")
@Lazy
public class GenresService implements IGenresService {
    @Autowired
    private GenresDao genresDao;

    @Autowired
    private DefaultOntimizeDaoHelper daoHelper;

    @Override
    public EntityResult genresQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.genresDao, keyMap, attrList);
    }

    @Override
    public EntityResult genresInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.genresDao, attrMap);
    }

    @Override
    public EntityResult genresUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.genresDao, attrMap, keyMap);
    }

    @Override
    public EntityResult genresDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.genresDao, keyMap);
    }
}