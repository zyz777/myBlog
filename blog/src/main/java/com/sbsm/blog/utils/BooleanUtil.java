package com.sbsm.blog.utils;

public class BooleanUtil {
    private BooleanUtil(){}

    public static boolean valueOfOrDefault(Boolean value, boolean defaultValue) {
        return value == null ? defaultValue : value;
    }

}
