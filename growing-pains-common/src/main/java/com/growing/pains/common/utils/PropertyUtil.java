package com.growing.pains.common.utils;

import com.google.common.collect.Maps;
import com.growing.pains.common.exception.BusinessException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

import java.util.Map;
import java.util.Properties;

/**
 * 返回Properties内容
 */
public class PropertyUtil extends PropertyPlaceholderConfigurer {

    private static Map<String, String> propertiesMap;

    private static final Logger logger = LoggerFactory.getLogger(PropertyUtil.class);

    @Override
    protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props) throws BeansException {
        super.processProperties(beanFactoryToProcess, props);
        propertiesMap = Maps.newHashMap();

        for (Object key : props.keySet()) {
            String keyStr = key.toString();
            String value = props.getProperty(keyStr);
            propertiesMap.put(keyStr, value);
        }
    }

    public static String getPropertByName(String name) {
        String value = propertiesMap.get(name);
        if (StringUtils.isBlank(value)) {
            return "";
        }

        try {
            return new String(value.getBytes("ISO-8859-1"), "UTF-8");
        } catch (Exception e) {
            logger.error("获取properties内容出错", e);
            throw new BusinessException("获取properties内容出错", e);
        }
    }
}
