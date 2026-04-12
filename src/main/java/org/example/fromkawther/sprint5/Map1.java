package org.example.fromkawther.sprint5;
import java.util.Map;
public class Map1 {

    //1:
    public Map<String, String> mapBully(Map<String, String> map) {
        if (map.containsKey("a")) {

            String valueA = map.get("a");
            map.put("b", valueA);


            map.put("a", "");
        }


        return map;
    }
    //2:
    public Map<String, String> topping1(Map<String, String> map) {
        if (map.containsKey("ice cream")) {
            map.put("ice cream", "cherry");
        }


        map.put("bread", "butter");

        return map;
    }
    //3:
    public Map<String, String> mapAB2(Map<String, String> map) {
        if (map.containsKey("a") && map.containsKey("b")) {


            if (map.get("a").equals(map.get("b"))) {


                map.remove("a");
                map.remove("b");
            }
        }

        return map;
    }
    //4:
    public Map<String, String> mapShare(Map<String, String> map) {
        if (map.containsKey("a")) {
            map.put("b", map.get("a"));
        }


        map.remove("c");

        return map;
    }
    //5:
    public Map<String, String> topping2(Map<String, String> map) {
        if (map.containsKey("ice cream")) {
            String iceCreamTopping = map.get("ice cream");
            map.put("yogurt", iceCreamTopping);
        }


        if (map.containsKey("spinach")) {
            map.put("spinach", "nuts");
        }

        return map;
    }
    //6:
    public Map<String, String> mapAB3(Map<String, String> map) {
        if (map.containsKey("a") && !map.containsKey("b")) {
            map.put("b", map.get("a"));
        }

        else if (map.containsKey("b") && !map.containsKey("a")) {
            map.put("a", map.get("b"));
        }


        return map;
    }
    //7:
    public Map<String, String> mapAB(Map<String, String> map) {
        if (map.containsKey("a") && map.containsKey("b")) {


            String combined = map.get("a") + map.get("b");


            map.put("ab", combined);
        }


        return map;
    }
    //8:
    public Map<String, String> topping3(Map<String, String> map) {
        if (map.containsKey("potato")) {
            map.put("fries", map.get("potato"));
        }


        if (map.containsKey("salad")) {
            map.put("spinach", map.get("salad"));
        }

        return map;
    }
    //9:
    public Map<String, String> mapAB4(Map<String, String> map) {
        if (map.containsKey("a") && map.containsKey("b")) {
            String strA = map.get("a");
            String strB = map.get("b");

            int lenA = strA.length();
            int lenB = strB.length();


            if (lenA != lenB) {
                String longer = (lenA > lenB) ? strA : strB;
                map.put("c", longer);
            }

            else {
                map.put("a", "");
                map.put("b", "");
            }
        }

        return map;
    }

}
