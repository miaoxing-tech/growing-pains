package com.growing.pains.main.web.auth.context;

import com.google.common.base.Preconditions;

/**
 * 上下文对象，其中封装了本线程中使用的对象，可以通过 {@link PermissionContext#getFromCurrent(com.growing.pains.main.web.auth.context.PermissionContextKey)}
 * 获取已注入的对象（通过一个内存缓存维护），如果注入的对象实现了 @see Closeable ，则在从缓存中移出注入对象时，将自动调用其 @see
 * {@link java.io.Closeable#close()} 方法。
 * <p/>
 * 在一个线程中第一次尝试访问上下文对象时会自动创建，应该在合适的时机调用 {@link #closeCurrent()}
 * 方法以关闭上下文对象，从而可以有一个时机释放其缓存对象及缓存对象中持有的资源，如果缓存的对象持有资源，例如一个网络连接，则该缓存对象应该实现 @see
 * Closeable 接口，并在其 @see {@link java.io.Closeable#close()}
 * 中对资源进行释放，这样的话，在上下文对象被释放时，将自动调用 {@link java.io.Closeable#close()} 方法，以正确释放资源。
 *
 * @author: miaoxing
 * DATE:    16/7/10
 */
public class PermissionContext {
    /**
     * 当前线程内的实例
     */
    private static ThreadLocal<ContextHolder<PermissionContextKey>> CURRENT_CONTEXT = new ThreadLocal<>();

    /**
     * 内部方法，在使用当前上下文时调用
     *
     * @return 当前线程绑定的实例，如果尚未创建，创建之
     */
    private static ContextHolder<PermissionContextKey> getCurrent() {
        ContextHolder<PermissionContextKey> contextHolder = CURRENT_CONTEXT.get();
        if (contextHolder == null) {
            CURRENT_CONTEXT.set(new ContextHolder<>());
        }
        return contextHolder;
    }

    /**
     * 从当前线程绑定的上下文实例中按照类型（必须精确匹配）获取已注入的对象
     *
     * @param type 对象类型
     * @return 已注入的对象
     */
    public static Object putCurrent(PermissionContextKey type, Object obj) {
        Preconditions.checkNotNull(type, "PermissionContextKey was null");
        Preconditions.checkNotNull(obj, "Cannot put null");
        return getCurrent().set(type, obj);
    }

    /**
     * 从当前线程绑定的上下文实例中按照类型（必须精确匹配）获取已注入的对象
     *
     * @param type 对象类型
     * @return 已注入的对象
     */
    public static Object getFromCurrent(PermissionContextKey type) {
        return getFromCurrent(type, true);
    }

    /**
     * 从当前线程绑定的上下文实例中按照类型（必须精确匹配）获取已注入的对象
     *
     * @param key      类名
     * @param required 如果对象不存在，是否扔出异常：如果为true，扔出异常；否则，返回null
     * @return 对象
     */
    public static Object getFromCurrent(PermissionContextKey key, boolean required) {
        return getCurrent().get(key, required);
    }

    /**
     * 从当前线程绑定的上下文实例中按照类型（必须精确匹配）获取已注入的对象
     *
     * @param key 要移除的类型
     * @return 对象
     */
    public static Object removeFromCurrent(PermissionContextKey key) {
        return getCurrent().remove(key);
    }

    /**
     * 关闭上下文对象，自动清除所有已注入的对象，如果注入的对象为 @see Closeable 的实现类，将自动调用其 @see
     * {@link java.io.Closeable#close()} 方法
     */
    public static void closeCurrent() {
        getCurrent().clear();
        CURRENT_CONTEXT.set(null);
    }
}
