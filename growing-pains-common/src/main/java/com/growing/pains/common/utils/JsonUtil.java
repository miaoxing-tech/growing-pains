package com.growing.pains.common.utils;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.google.common.base.Splitter;
import com.growing.pains.common.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;

/**
 * JSON工具类
 */
public final class JsonUtil {
    private static final Logger logger = LoggerFactory.getLogger(JsonUtil.class);
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    static {
        // 接受JSON中存在注释
        OBJECT_MAPPER.configure(JsonParser.Feature.ALLOW_COMMENTS, true);
        // 接受JSON中不使用双引号包围Key
        OBJECT_MAPPER.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
        // 接受JSON中用单引号代替双引号
        OBJECT_MAPPER.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);
        // 接受JSON中存在控制字符在非字符串中的情况
        OBJECT_MAPPER.configure(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS, true);
        // 反序列化中忽略未知JSON字段
        OBJECT_MAPPER.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
        // 不序列化Map中值为null的数据
        OBJECT_MAPPER.disable(SerializationFeature.WRITE_NULL_MAP_VALUES);
        // 不序列化为null的属性
        OBJECT_MAPPER.setSerializationInclusion(JsonInclude.Include.NON_NULL);
    }

    private JsonUtil() {
        throw new UnsupportedOperationException();
    }

    public static String encode(Object obj) throws IOException {
        return OBJECT_MAPPER.writeValueAsString(obj);
    }

    /**
     * 序列化为JSON（不抛出异常，用于打印日志等不关心异常的场景）
     *
     * @param obj
     * @return
     */
    public static String encodeQuietly(Object obj) {
        try {
            return encode(obj);
        } catch (IOException e) {
            logger.error("序列化失败, obj:{}, reason:{}", obj, e.getMessage(), e);
            return null;
        }
    }

    /**
     * 序列化为JSON, 出错则抛出ScmException
     *
     * @param obj
     * @param mayError
     * @return
     */
    public static String encode(Object obj, String mayError) throws BusinessException {
        try {
            return encode(obj);
        } catch (IOException e) {
            throw new BusinessException(mayError, e);
        }
    }

    public static <T> T decode(String json, Class<T> clazz) throws IOException {
        return OBJECT_MAPPER.readValue(json, clazz);
    }

    /**
     * 反序列化为clazz, 出错则抛出ScmException
     *
     * @param json
     * @param clazz
     * @param mayError
     * @return
     */
    public static <T> T decode(String json, Class<T> clazz, String mayError) throws BusinessException {
        try {
            return OBJECT_MAPPER.readValue(json, clazz);
        } catch (IOException e) {
            throw new BusinessException(mayError, e);
        }
    }

    public static JsonNode decode(String json) throws IOException {
        return OBJECT_MAPPER.readTree(json);
    }

    public static <T> T decode(JsonNode jsonNode, Class<T> clazz) throws IOException {
        return OBJECT_MAPPER.readValue(OBJECT_MAPPER.treeAsTokens(jsonNode), clazz);
    }

    public static <T> T decode(String json, ParameterizedType parameterizedType) throws IOException {
        return (T) OBJECT_MAPPER.readValue(json, convertToJavaType(parameterizedType));
    }

    public static <T> T decode(String json, ParameterizeTypeReference<T> typeReference) throws IOException {
        return (T) OBJECT_MAPPER.readValue(json, convertToJavaType(typeReference));
    }

    public static <T> T decode(JsonNode jsonNode, ParameterizeTypeReference<T> typeReference) throws IOException {
        return (T) OBJECT_MAPPER.readValue(OBJECT_MAPPER.treeAsTokens(jsonNode), convertToJavaType(typeReference));
    }

    /**
     * 根据path解析json串里面的某一个值，只支持简单的name.name1.name2方式
     *
     * @param json      完整JSON串
     * @param path      类似xPath的属性路径
     * @param valueType 属性路径对应的JSON节点需要反序列化的Java类型
     * @return 若path对应的节点不存在，则返回null，否则返回反序列化之后的对象
     */
    public static <T> T decode(String json, String path, Class<T> valueType) throws IOException {
        JsonNode node = OBJECT_MAPPER.readTree(json);
        Iterable<String> names = Splitter.on('.').split(path);
        for (String name : names) {
            node = node.path(name);
        }

        if (node.isMissingNode()) {
            return null;
        } else {
            return (T) OBJECT_MAPPER.reader(valueType).readValue(node);
        }
    }

    private static <T> JavaType convertToJavaType(ParameterizeTypeReference<T> typeReference) {
        TypeFactory typeFactory = TypeFactory.defaultInstance();
        return typeFactory.constructType(typeReference.getType());
    }

    private static JavaType convertToJavaType(ParameterizedType parameterizedType) {
        TypeFactory typeFactory = TypeFactory.defaultInstance();
        return typeFactory.constructType(parameterizedType);
    }
}
