package com.ontimize.filmPool.ws.core.rest;

import com.ontimize.db.EntityResult;
import com.ontimize.db.SQLStatementBuilder;
import com.ontimize.filmPool.api.core.service.IContenidosService;

import com.ontimize.filmPool.model.core.dao.ContentDao;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/contents")
public class ContentRestController extends ORestController<IContenidosService> {

    @Autowired
    IContenidosService iContenidosService;

    @Override
    public IContenidosService getService() {
        return this.iContenidosService;
    }

    @RequestMapping(value = "newMovies/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getNewMovies(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            Map<String, Object> key = new HashMap<String, Object>();
            key.put(SQLStatementBuilder.ExtendedSQLConditionValuesProcessor.EXPRESSION_KEY,
                    getNewMovies(ContentDao.));
            return iContenidosService.contentQuery(key, columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }

    private SQLStatementBuilder.BasicExpression searchBetween(String param) {

        Calendar cal = Calendar.getInstance();
        int currentYear = cal.get(Calendar.YEAR);

        return this.searchBetweenWithYear(param, currentYear);
    }

    private SQLStatementBuilder.BasicExpression searchBetweenWithYear(String param, int year) {

        Calendar cal = Calendar.getInstance();
        cal.set(year, 0, 1);
        Date startDate = cal.getTime();
        cal.set(year + 1, 0, 1);
        Date endDate = cal.getTime();

        SQLStatementBuilder.BasicField field = new SQLStatementBuilder.BasicField(param);
        SQLStatementBuilder.BasicExpression bexp1 = new SQLStatementBuilder.BasicExpression(field, SQLStatementBuilder.BasicOperator.MORE_EQUAL_OP, startDate);
        SQLStatementBuilder.BasicExpression bexp2 = new SQLStatementBuilder.BasicExpression(field, SQLStatementBuilder.BasicOperator.LESS_OP, endDate);
        return new SQLStatementBuilder.BasicExpression(bexp1, SQLStatementBuilder.BasicOperator.AND_OP, bexp2);
    }



}
