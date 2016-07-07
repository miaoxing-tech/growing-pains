package com.growing.pains.common.utils;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public class MD5Util {

    public static String encrypt(String plainText) {
        if (plainText == null) {
            return null;
        }
        return Hashing.md5().hashString(plainText, Charsets.UTF_8).toString();
    }
}
