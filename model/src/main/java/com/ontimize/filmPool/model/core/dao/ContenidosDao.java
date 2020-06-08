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

    public static final String contenido_id = "contenido_id";
    public static final String contenido_name = "contenido_name";
    public static final String contenido_duration = "contenido_duration";
    public static final String contenido_nacionality = "contenido_nacionality";
    public static final String contenido_release_date = "contenido_release_date";
    public static final String studio_id = "studio_id";
    public static final String genre_id = "genre_id";
    public static final String contenido_plot = "contenido_plot";
    public static final String contenido_poster_path = "contenido_poster_path";
    public static final String contenido_total_vote = "contenido_total_vote";
    public static final String contenido_total_rating = "contenido_total_rating";
    public static final String director_id = "director_id";

}
