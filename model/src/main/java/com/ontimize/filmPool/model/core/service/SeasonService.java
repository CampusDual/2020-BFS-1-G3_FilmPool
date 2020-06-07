package com.ontimize.filmPool.model.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.filmPool.api.core.service.ISeasonService;
import com.ontimize.filmPool.model.core.dao.SeasonDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("SeasonService")
@Lazy
public class SeasonService implements ISeasonService {

    @Autowired
    private SeasonDao seasonDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;

    @Override
    public EntityResult seasonQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.seasonDao,keyMap,attrList);
    }

    @Override
    public EntityResult seasonInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.seasonDao,attrMap);
    }

    @Override
    public EntityResult seasonUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.seasonDao,attrMap,keyMap);
    }

    @Override
    public EntityResult seasonDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.seasonDao,keyMap);
    }

}
