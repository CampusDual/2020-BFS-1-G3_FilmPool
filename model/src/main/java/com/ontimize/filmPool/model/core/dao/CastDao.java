package com.ontimize.filmPool.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("CastDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/CastDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class CastDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_CAST_ID = "cast_id";
    public static final String ATTR_CAST_NAME = "cast_name";
    public static final String ATTR_CAST_BIRTH_DATE = "cast_birth_date";
    public static final String ATTR_CAST_DEAD_DATE = "cast_dead_date";
    public static final String ATTR_CAST_BIRTH_PLACE = "cast_birth_place";
    public static final String ATTR_CAST_NATIONALITY = "cast_nationality";

}
