package com.hzb.crm.settings.web.controller;

import com.hzb.crm.settings.domain.DicType;
import com.hzb.crm.settings.service.DicTypeService;
import com.hzb.crm.settings.service.impl.DicTypeServiceImpl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class DicTypeController extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String servletPath = req.getServletPath();
        if ("/settings/dictionary/type/checkCodeUnique.do".equals(servletPath)) {
            this.doCheckCodeUnique(req, resp);
        }
    }

    private void doCheckCodeUnique(HttpServletRequest req, HttpServletResponse resp) {
        String code = req.getParameter("code");
        DicTypeService dts = (DicTypeService) new TransactionHandler(new DicTypeServiceImpl()).getProxy();
        DicType dt = dts.getByCode(code);
        Map<String, Boolean> jsonMap = new HashMap<>();

        ObjectMapper om = new ObjectMapper();
        jsonMap.put("success", dt == null);

    }


}
