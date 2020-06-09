package com.ontimize.filmPool.model.core.dao;
import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository(value = "SeasonDao")
@Lazy
@ConfigurationFile(
        configurationFile = "dao/SeasonDao.xml",
        configurationFilePlaceholder = "dao/placeholders.properties")
public class SeasonDao extends OntimizeJdbcDaoSupport {

    public static final String show_season_id = "show_season_id";
    public static final String season_number = "season_number";
    public static final String show_season_plot = "show_season_plot";
    public static final String show_id = "show_id";

}
