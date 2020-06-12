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

    public static final String shows_chapters_id = "shows_chapters_id";
    public static final String chapter_number = "chapter_number";
    public static final String show_chapter_plot = "show_chapter_plot";
    public static final String shows_season_id = "shows_season_id";

}
