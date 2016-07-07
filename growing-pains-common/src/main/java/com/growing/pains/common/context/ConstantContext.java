package com.growing.pains.common.context;

import com.google.common.base.Splitter;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public class ConstantContext {
    public static final Splitter EQUAL_SIGN_SPLITTER = Splitter.on("=").trimResults().omitEmptyStrings();

    public static final String LINE_BREAK = System.lineSeparator();
    public static final String EQUAL_SIGN = "=";
    public static final String PLUS = "+";
    public static final String MINUS = "-";
    public static final String SEMICOLON = ";";
    public static final String HTML_LINE_BREAK = "<br />";

    public static final String USERNAME_COOKIE = "_v";
    public static final String USERNAME_TIME_COOKIE = "_D";
    public static final String PATH_COOKIE = "/";
}
