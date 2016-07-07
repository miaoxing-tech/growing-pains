package com.growing.pains.common.result;

import com.google.common.collect.Maps;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
public class ApiResult<T> implements Serializable {

    public static final int DEFAULT_FAILED_STATUS = -1;
    public static final int DEFAULT_SUCCESS_STATUS = 0;

    public static final String DEFAULT_FAILED_MESSAGE = "失败";
    public static final String DEFAULT_SUCCESS_MESSAGE = "成功";

    /**
     * 0 代表成功, 其他代表失败.
     */
    private int status;

    /**
     * 业务数据
     */
    private T data;

    /**
     * 出错信息， 输出出错码对应的出错信息
     */
    private String message;

    /**
     * 创建分页数据返回值
     *
     * @param total 总条数
     * @param list  数据列表
     * @return
     */
    public static <E> ApiResult buildPagination(int total, List<E> list) {
        Map<String, Object> pagination = Maps.newHashMap();
        pagination.put("total", total);
        pagination.put("list", list);
        return ApiResult.succ(pagination);
    }

    /**
     * 创建分页数据返回值
     *
     * @param status 状态码
     * @param total  总条数
     * @param list   数据列表
     * @return
     */
    public static <E> ApiResult buildPagination(int status, int total, List<E> list) {
        Map<String, Object> pagination = Maps.newHashMap();
        pagination.put("total", total);
        pagination.put("list", list);
        return ApiResult.succ(status, pagination);
    }

    /**
     * 创建分页数据返回值
     *
     * @param message 返回消息
     * @param total   总条数
     * @param list    数据列表
     * @return
     */
    public static <E> ApiResult buildPagination(String message, int total, List<E> list) {
        Map<String, Object> pagination = Maps.newHashMap();
        pagination.put("total", total);
        pagination.put("list", list);
        return ApiResult.succ(message, pagination);
    }

    public ApiResult<T> status(Integer status) {
        this.status = status;
        return this;
    }

    public ApiResult<T> message(String message) {
        this.message = message;
        return this;
    }

    public ApiResult<T> data(T t) {
        this.data = t;
        return this;
    }

    public ApiResult() {
    }

    public ApiResult(T data) {
        this.status = 0;
        this.data = data;
        this.message = null;
    }

    public ApiResult(Integer status, T data) {
        this.status = status;
        this.data = data;
        this.message = null;
    }

    public ApiResult(Integer status, String message) {
        this.status = status;
        this.message = message;
        this.data = null;
    }

    public ApiResult(Integer status, String message, T data) {
        this.status = status;
        this.data = data;
        this.message = message;
    }

    public static <T> ApiResult<T> succ() {
        return succ(null);
    }

    public static <T> ApiResult<T> succ(T t) {
        return succ(DEFAULT_SUCCESS_MESSAGE, t);
    }

    public static <T> ApiResult<T> succ(String message, T t) {
        return new ApiResult<T>(DEFAULT_SUCCESS_STATUS, message, t);
    }

    public static <T> ApiResult<T> succ(int status, T t) {
        return new ApiResult<T>(status, DEFAULT_SUCCESS_MESSAGE, t);
    }

    /**
     * 构建failed ApiResult
     *
     * @param errmsg 错误信息
     * @param <T>    data
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(String errmsg) {
        return new ApiResult<T>(DEFAULT_FAILED_STATUS, errmsg, null);
    }

    /**
     * 构建failed ApiResult
     *
     * @param status  错误编码
     * @param message 错误信息
     * @param <T>     data
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(Integer status, String message) {
        return new ApiResult<T>(status, message, null);
    }

    /**
     * 构建failed ApiResult
     *
     * @param t   data
     * @param <T> data
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(T t) {
        return fail(DEFAULT_FAILED_STATUS, t);
    }

    /**
     * 构建failed ApiResult
     *
     * @param status 失败状态
     * @param t      Data
     * @param <T>    泛型
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(int status, T t) {
        return new ApiResult<T>(status, DEFAULT_FAILED_MESSAGE, t);
    }

    /**
     * 构建failed ApiResult
     *
     * @param message 失败msg
     * @param t       Data
     * @param <T>     泛型
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(String message, T t) {
        return new ApiResult<T>(DEFAULT_FAILED_STATUS, message, t);
    }

    /**
     * 构建failed ApiResult
     *
     * @param status  状态
     * @param message 错误信息
     * @param t       错误信息
     * @param <T>     data
     * @return ApiResult
     */
    public static <T> ApiResult<T> fail(Integer status, String message, T t) {
        return new ApiResult<T>(status, message, t);
    }


    public int getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }
}