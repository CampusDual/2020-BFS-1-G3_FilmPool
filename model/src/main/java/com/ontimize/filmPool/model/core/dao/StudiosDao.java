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

    public static final String studio_id = "studio_id";
    public static final String studio_name = "studio_name";

}