package com.ontimize.filmPool.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "StudioDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/StudioDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")

public class StudiosDao extends OntimizeJdbcDaoSupport {

    public static final String STUDIO_ID = "STUDIO_ID";
    public static final String STUDIO_NAME = "STUDIO_NAME";

}