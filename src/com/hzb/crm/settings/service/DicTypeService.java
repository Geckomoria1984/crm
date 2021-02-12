package com.hzb.crm.settings.service;

import com.hzb.crm.settings.domain.DicType;

public interface DicTypeService {
    DicType getByCode(String code);
}
