package com.ontimize.filmPool.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("RepartoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/RepartoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class RepartoDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_REPARTO_ID = "reparto_id";
    public static final String ATTR_REPARTO_NAME = "reparto_name";
    public static final String ATTR_REPARTO_BIRTH_DATE = "reparto_birth_date";
    public static final String ATTR_REPARTO_DEAD_DATE = "reparto_dead_date";
    public static final String ATTR_REPARTO_BIRTH_PLACE = "reparto_birth_place";
    public static final String ATTR_REPARTO_NATIONALITY = "reparto_nationality";
}
