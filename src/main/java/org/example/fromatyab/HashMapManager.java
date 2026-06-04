package org.example.fromatyab;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class HashMapManager {
    public static void main(String[] args) {
        HashMap<String, String> complains = new HashMap<>();
        HashSet<String> oldComplainIds = new HashSet<>();
        HashSet<String> newComplainIds = new HashSet<>();
        oldComplainIds.add("A1");
        oldComplainIds.add("A2");
        oldComplainIds.add("A3");
        oldComplainIds.add("B1");

        newComplainIds.add("A2");
        newComplainIds.add("Z1");
        newComplainIds.add("B1");
        newComplainIds.add("C2");

        newComplainIds.retainAll(oldComplainIds);

        for (String currCompId: newComplainIds) {
            System.out.println(currCompId);
        }

        complains.put("A1", "abc");
        complains.put("A2", "xyz");
    }
}
