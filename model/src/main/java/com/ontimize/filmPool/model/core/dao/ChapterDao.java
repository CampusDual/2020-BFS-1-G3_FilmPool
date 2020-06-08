package com.ontimize.filmPool.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "ChapterDao")
@Lazy
@ConfigurationFile(
        configurationFile = "dao/ChapterDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")
public class ChapterDao extends OntimizeJdbcDaoSupport {

    public static final String CHAPTER_ID = "ID";
    public static final String CHAPTER_NUMBER = "NUMBER";
    public static final String CHAPTER_PLOT = "PLOT";
    public static final String SEASON_ID = "SEASON_ID";

}
