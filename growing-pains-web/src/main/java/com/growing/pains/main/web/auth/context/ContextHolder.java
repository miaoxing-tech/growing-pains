package com.growing.pains.main.web.auth.context;

import com.google.common.collect.Maps;
import com.growing.pains.common.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Closeable;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Callable;

/**
 * 在上下文中作为信息存储使用
 *
 * @author: miaoxing
 * DATE:    16/7/10
 */
public class ContextHolder<K> {

    private static final Logger LOGGER = LoggerFactory.getLogger(ContextHolder.class);

    /**
     * PermissionContextKey => instance
     */
    private final Map<K, Object> cache = Maps.newHashMap();

    /**
     * 从上下文中获取
     *
     * @param key
     * @return
     */
    public Object get(K key) {
        return get(key, true);
    }

    /**
     * 从上下文中获取
     *
     * @param key
     * @param required 当设置为true时，获取为null时抛出异常，false则返回null
     * @return
     */
    public Object get(K key, boolean required) {
        Object value = cache.get(key);
        if (value != null) {
            if (value instanceof Callable) {
                Callable callable = (Callable) value;
                try {
                    Object obj = callable.call();
                    cache.put(key, obj);
                    return obj;
                } catch (Exception e) {
                    throw new BusinessException("error when getting " + key + " from content by Callable", e);
                }
            }
            return value;
        }

        if (required) {
            throw new RuntimeException("required '" + key + "' not found in context");
        }
        return null;
    }

    /**
     * 向上下文中注入对象，如果注入的对象为 @see Closeable 的实现类，则在将此对象从缓存中移除时（包括整个上下文对象的释放），将自动调用其 @see
     * {@link java.io.Closeable#close()} 方法
     *
     * @param key    对象类名
     * @param object 对象
     * @return 注入的对象
     */
    public Object set(K key, Object object) {
        return cache.put(key, object);
    }

    /**
     * 从上下文中移除对象,如果注入的对象为 @see Closeable 的实现类，将自动调用其 @see
     * {@link java.io.Closeable#close()} 方法
     *
     * @param key （必须和注入时使用的类名一致）
     * @return 移除的对象（对于 @see Closeable 的实现类，由于已经调用关闭方法，则不应该继续尝试调用其关闭方法）
     */
    public Object remove(K key) {
        Object removed = cache.remove(key);
        if (removed != null) {
            if (removed instanceof Closeable) {
                try {
                    ((Closeable) removed).close();
                } catch (IOException e) {
                    LOGGER.error("close error in Context. key = {}. ", key, e);
                }
            }
        }
        return removed;
    }

    /**
     * 清除所有已注入的对象，如果注入的对象为 @see Closeable 的实现类，将自动调用其 @see
     * {@link java.io.Closeable#close()} 方法
     */
    public void clear() {
        cache.entrySet()
                .stream()
                .filter(entry -> entry.getValue() instanceof Closeable)
                .forEach(entry -> {
                    try {
                        ((Closeable) entry.getValue()).close();
                    } catch (IOException e) {
                        LOGGER.error("close error in Context. key = {}. ", entry.getKey(), e);
                    }
                });
        cache.clear();
    }
}
