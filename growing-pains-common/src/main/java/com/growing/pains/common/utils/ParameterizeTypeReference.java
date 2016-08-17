package com.growing.pains.common.utils;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * 参数化类型引用
 */
public abstract class ParameterizeTypeReference<T> {

    private final Type type;

    public ParameterizeTypeReference() {
        Type clazz = getClass().getGenericSuperclass();
        type = ((ParameterizedType) clazz).getActualTypeArguments()[0];
    }

    public Type getType() {
        return this.type;
    }
}