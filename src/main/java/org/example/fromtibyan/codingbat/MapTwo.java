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

}
