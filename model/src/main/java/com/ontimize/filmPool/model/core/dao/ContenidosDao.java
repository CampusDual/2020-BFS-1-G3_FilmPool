package com.ontimize.filmPool.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "ContenidosDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContenidosDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")

public class ContenidosDao extends OntimizeJdbcDaoSupport {

    public static final String CONTENIDO_ID = "CONTENIDO_ID";
    public static final String CONTENIDO_NAME = "CONTENIDO_NAME";
    public static final String CONTENIDO_DURATION = "CONTENIDO_DURATION";
    public static final String CONTENIDO_NACIONALITY = "CONTENIDO_NACIONALITY";
    public static final String CONTENIDO_RELEASE_DATE = "CONTENIDO_RELEASE_DATE";
    public static final String STUDIO_ID = "STUDIO_ID";
    public static final String GENRE_ID = "GENRE_ID";
    public static final String CONTENIDO_PLOT = "CONTENIDO_PLOT";
    public static final String CONTENIDO_POSTER_PATH = "CONTENIDO_POSTER_PATH";
    public static final String CONTENIDO_TOTAL_VOTE = "CONTENIDO_TOTAL_VOTE";
    public static final String CONTENIDO_TOTAL_RATING = "CONTENIDO_TOTAL_RATING";
    public static final String DIRECTOR_ID = "DIRECTOR_ID";

}
