package org.example.fromkawther.codebat;

import java.util.Map;
import java.util.HashMap;

public class Map2 {
    public Map<String, Integer> word0(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        for (String s : strings) {
            map.put(s, 0);
        }

        return map;
    }

    public Map<String, Integer> wordCount(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        for (String s : strings) {
            if (!map.containsKey(s)) {
                map.put(s, 0);
            }

            int count = map.get(s);
            map.put(s, count + 1);
        }

        return map;
    }

    public Map<String, Boolean> wordMultiple(String[] strings) {
        Map<String, Boolean> map = new HashMap<String, Boolean>();

        for (String s : strings) {
            if (!map.containsKey(s)) {
                map.put(s, false);
            } else {
                map.put(s, true);
            }
        }

        return map;
    }

    public Map<String, Integer> wordLen(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        for (String s : strings) {
            map.put(s, s.length());
        }

        return map;
    }

    public Map<String, String> firstChar(String[] strings) {
        Map<String, String> map = new HashMap<String, String>();

        for (String s : strings) {
            if (s.length() == 0) continue;
            String key = s.substring(0, 1);

            if (map.containsKey(key)) {
                String current = map.get(key);
                map.put(key, current + s);
            } else {
                map.put(key, s);
            }
        }

        return map;
    }

    public String[] allSwap(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        for (int i = 0; i < strings.length; i++) {
            if (strings[i].length() == 0) continue;
            String key = strings[i].substring(0, 1);

            if (map.containsKey(key)) {
                int prevIndex = map.get(key);

                String temp = strings[prevIndex];
                strings[prevIndex] = strings[i];
                strings[i] = temp;

                map.remove(key);
            } else {
                map.put(key, i);
            }
        }

        return strings;
    }

    public Map<String, String> pairs(String[] strings) {
        Map<String, String> map = new HashMap<String, String>();

        for (String s : strings) {
            if (s.length() == 0) continue;
            String first = s.substring(0, 1);
            String last = s.substring(s.length() - 1);
            map.put(first, last);
        }

        return map;
    }

    public String wordAppend(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        String result = "";

        for (String s : strings) {
            int count = 0;
            if (map.containsKey(s)) {
                count = map.get(s) + 1;
            } else {
                count = 1;
            }
            map.put(s, count);

            if (count % 2 == 0) {
                result += s;
            }
        }

        return result;
    }

    public String[] firstSwap(String[] strings) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        for (int i = 0; i < strings.length; i++) {
            if (strings[i].length() == 0) continue;
            String key = strings[i].substring(0, 1);

            if (!map.containsKey(key)) {
                map.put(key, i);
            } else {
                int prevIndex = map.get(key);

                if (prevIndex != -1) {
                    String temp = strings[prevIndex];
                    strings[prevIndex] = strings[i];
                    strings[i] = temp;

                    map.put(key, -1);
                }
            }
        }

        return strings;
    }
}