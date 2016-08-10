package com.growing.pains.model.enums;

/**
 * @author: miaoxing
 * DATE:    16/7/29
 */
public enum BlogState implements EnumTrait {

    INVALID(0, "无效博客"),
    VALID(1, "有效博客"),;

    BlogState(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    private int code;
    private String desc;

    @Override
    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public static BlogState codeOf(short code) {
        return EnumCodeOf.codeOf(code, BlogState.class);
    }
}
