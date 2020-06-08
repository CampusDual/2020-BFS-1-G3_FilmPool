package com.ontimize.filmPool.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "SeasonDao")
@Lazy
@ConfigurationFile(
        configurationFile = "dao/SeasonDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")
public class SeasonDao extends OntimizeJdbcDaoSupport {

    public static final String SEASON_ID = "ID";
    public static final String SEASON_NUMBER = "NUMBER";
    public static final String SEASON_PLOT = "PLOT";
    public static final String CONTENIDO_ID = "CONTENIDO_ID";

}
