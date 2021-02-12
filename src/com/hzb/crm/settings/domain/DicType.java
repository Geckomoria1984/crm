package com.hzb.crm.settings.domain;

public class DicType {
    private String code;
    private String description;
    private String name;


    public DicType() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public DicType(String code, String description, String name) {
        this.code = code;
        this.description = description;
        this.name = name;
    }
}
