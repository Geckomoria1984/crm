package com.hzb.crm.settings.service.impl;

import com.hzb.crm.settings.domain.DicType;
import com.hzb.crm.settings.mapper.DicTypeDao;
import com.hzb.crm.settings.service.DicTypeService;
import com.sun.jdi.event.ClassPrepareEvent;

public class DicTypeServiceImpl implements DicTypeService {
    private DicTypeDao dicTypeDao;
    @Override
    public DicType getByCode(String code) {
        return dicTypeDao.getByCode(code);
    }
}
