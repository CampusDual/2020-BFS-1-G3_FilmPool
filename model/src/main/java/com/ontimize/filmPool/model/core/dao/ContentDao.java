package com.ontimize.filmPool.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "ContenidosDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContentDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")

public class ContentDao extends OntimizeJdbcDaoSupport {

    public static final String CONTENIDO_ID = "contenido_id";
    public static final String CONTENIDO_NAME = "contenido_name";
    public static final String CONTENIDO_DURATION = "contenido_duration";
    public static final String CONTENIDO_NACIONALITY = "contenido_nacionality";
    public static final String CONTENIDO_RELEASE_BASE = "contenido_release_date";
    public static final String STUDIO_ID = "studio_id";
    public static final String GENRE_ID = "genre_id";
    public static final String CONTENIDO_PLOT = "contenido_plot";
    public static final String CONTENIDO_POSTER_PATH = "contenido_poster_path";
    public static final String CONTENIDO_TOTAL_VOTE = "contenido_total_vote";
    public static final String CONTENIDO_TOTAL_RATING = "contenido_total_rating";
    public static final String DIRECTOR_ID = "director_id";

}
