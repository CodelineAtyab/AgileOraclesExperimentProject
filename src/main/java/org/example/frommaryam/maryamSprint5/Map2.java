package org.example.frommaryam.maryamSprint5;

import java.util.Map;
import java.util.HashMap;

public class Map2 {

    public static Map<String, Integer> gamesLetterCount(String[] stringsss) {
        Map<String, Integer> map = new HashMap<>();
        for (int i = 0; i < stringsss.length; i++) {
            String word = stringsss[i];
            if (map.containsKey(word)) {
                map.put(word, map.get(word) + 1);
            }
            else {
                map.put(word, 1);
            }
        }
        return map;
    }

    //implementation
    public static void main(String[] args) {

        //gamesLetterCount(game)
        //way of the game name entered --> {"" , "" , ""}


        String[] fortnite = {"f", "o", "r", "t", "n", "i", "t", "e"};
        System.out.println(gamesLetterCount(fortnite));

        String[] roblox = {"r", "o", "b" , "l", "o", "x"};
        System.out.println(gamesLetterCount(roblox));

        String[] fifa = {"f", "i", "f", "a"};
        System.out.println(gamesLetterCount(fifa));
    }
}