package com.ontimize.filmPool.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("GenresDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/GenresDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class GenresDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_GENRE_ID = "genre_id";
    public static final String ATTR_GENRE_NAME = "genre_name";
}
