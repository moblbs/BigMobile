package com.bigmobile.util;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import com.ibatis.sqlmap.client.extensions.ParameterSetter;
import com.ibatis.sqlmap.client.extensions.ResultGetter;
import com.ibatis.sqlmap.client.extensions.TypeHandlerCallback;

public class StringTypeHandler implements TypeHandlerCallback {
    public Object getResult(ResultGetter getter) throws SQLException {
        String temp = "";
        try {
            if (getter.getObject() == null) {
                return null;
            }
            temp = new String(getter.getString().getBytes("ISO8859_1"), "GBK");
        } catch (UnsupportedEncodingException e) {
        }
        return temp;
    }

    public void setParameter(ParameterSetter setter, Object value)
            throws SQLException {
        String s = (String) value;
        String gbkString;
        String temp = "";
        try {
            if (s != null && !"".equals(s)) {
                gbkString = new String(s.getBytes("GBK"), "GBK");
                if (gbkString.equals(s)) {
                    temp = new String(s.getBytes("GBK"), "ISO8859_1");
                }else{
                    temp = new String(s.getBytes(), "ISO8859_1");
                }
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        setter.setString(temp);

    }

    public Object valueOf(String value) {
        return value;
    }


}
