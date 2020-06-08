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

    public static final String CHAPTER_ID = "shows_chapters_id";
    public static final String CHAPTER_NUMBER = "chapter_number";
    public static final String CHAPTER_PLOT = "show_chapter_plot";
    public static final String SEASON_ID = "shows_season_id";

}
