package com.ontimize.filmPool.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "StudioDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/StudioDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")

public class StudioDao extends OntimizeJdbcDaoSupport {

    public static final String STUDIO_ID = "studio_id";
    public static final String STUDIO_NAME = "studio_name";

}