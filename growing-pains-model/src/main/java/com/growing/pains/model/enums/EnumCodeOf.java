/*
 * $Id$ Copyright (c) 2012 Qunar.com. All Rights Reserved.
 */
package com.growing.pains.model.enums;

import org.apache.commons.lang3.ArrayUtils;

import java.lang.reflect.Method;

/**
 * 枚举类codeof函数
 *
 * @author: miaoxing
 * DATE:    16/7/8
 */
public class EnumCodeOf {

    /**
     *
     * @param code
     * @param clazz 需要实现EnumTrait
     * @param <T>
     * @return
     */
    public static <T> T codeOf(Object code, Class<T> clazz) {
        T[] types = clazz.getEnumConstants();
        if (ArrayUtils.isEmpty(types)) {
            return null;
        }

        for (T type : types) {
            try {
                Method getCode = clazz.getMethod("getCode");
                if (code.equals(getCode.invoke(type))) {
                    return type;
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        return null;
    }
}
