package org.example.fromtibyan.codingbat;

import java.util.*;

public class MapTwo {
    public Map<String, Integer> word0(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        for (String key: strings){
            map.put(key,0);
        }return map;
    }

    public Map<String, Integer> wordLen(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        for (String key: strings){
            map.put(key,key.length());
        }return map;
    }

    public Map<String, String> pairs(String[] strings) {
        Map<String, String> map = new HashMap<String, String>();
        for (String key: strings){
            map.put(String.valueOf(key.charAt(0)),String.valueOf(key.charAt(key.length()-1)));
        }return map;
    }
}
