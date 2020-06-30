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

    public static final String chapter_id = "chapter_id";
    public static final String chapter_number = "chapter_number";
    public static final String chapter_plot = "chapter_plot";
    public static final String season_id = "season_id";

}
