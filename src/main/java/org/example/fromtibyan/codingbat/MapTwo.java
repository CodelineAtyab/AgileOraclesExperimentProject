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

    public Map<String, Integer> wordCount(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        for (String key: strings){
            if (map.containsKey(key)) {
                map.put(key,map.get(key)+1);
            } else {
                map.put(key,1);
            }
        }
        return map;
    }
    public Map<String, String> firstChar(String[] strings) {
        Map<String, String> map = new HashMap<String, String>();
        for (String key: strings){
            String first = String.valueOf(key.charAt(0));
            if (map.containsKey(first)){
                map.put(first, map.get(first)+key);
            }else {
                map.put(first, key);
            }
        }return map;

    }

}
