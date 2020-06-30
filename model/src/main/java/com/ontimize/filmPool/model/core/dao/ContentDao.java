package com.ontimize.filmPool.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "ContentDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContentDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")

public class ContentDao extends OntimizeJdbcDaoSupport {

    public static final String CONTENT_ID = "content_id";
    public static final String CONTENT_NAME = "content_name";
    public static final String CONTENT_DURATION = "content_duration";
    public static final String CONTENT_NATIONALITY = "content_nationality";
    public static final String CONTENT_RELEASE_DATE = "content_release_date";
    public static final String STUDIO_ID = "studio_id";
    public static final String GENRE_ID = "genre_id";
    public static final String CONTENT_PLOT = "content_plot";
    public static final String CONTENT_POSTER_PATH = "content_poster_path";
    public static final String CONTENT_TOTAL_VOTE = "content_total_vote";
    public static final String CONTENT_TOTAL_RATING = "content_total_rating";
    public static final String DIRECTOR_ID = "director_id";
    public static final String CONTENT_TRAILER = "content_trailer";
    public static final String CONTENT_TYPE = "content_type";
}
