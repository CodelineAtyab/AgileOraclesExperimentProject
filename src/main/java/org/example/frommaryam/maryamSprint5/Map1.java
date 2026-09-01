package org.example.frommaryam.maryamSprint5;

import java.util.Map;
import java.util.HashMap;

public class Map1 {

    public static Map<String, String> mapBully(Map<String, String> map) {
        if (map.containsKey("a")) {
            //bully
            String keyA = map.get("a");
            map.put("b", keyA);
            // empty (a)
            map.put("a", "");
        }
        return map;
    }


    // implementation
    public static void main(String[] args) {

        // example 1
        // mapBully(candyMap) --> entered {"a":"snickers" , "b":"skittles"}

        Map<String, String> candyMap= new HashMap<>();
        candyMap.put("a", "snickers");
        candyMap.put("b", "skittles");

        System.out.println(mapBully(candyMap));


        // example 2
        // mapBully(chipsMap) --> entered {"a":"lays"}
        Map<String, String> chipsMap = new HashMap<>();
        chipsMap.put("a", "lays");

        System.out.println(mapBully(chipsMap));

        // example 3
        // mapBully(drinksMap) --> entered {"a":"prime" , "b":"sprite" , "c":"coca.cola"}
        Map<String, String> drinksMap = new HashMap<>();
        drinksMap.put("a", "prime");
        drinksMap.put("b", "sprite");
        drinksMap.put("c", "coca.cola");

        System.out.println(mapBully(drinksMap));

    }
}
