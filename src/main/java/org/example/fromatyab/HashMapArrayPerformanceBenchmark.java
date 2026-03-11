package org.example.fromatyab;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

public class HashMapArrayPerformanceBenchmark {
    public static void main(String[] args) {
        ArrayList<String> userCivilIds = new ArrayList<>();
        HashMap<String, String> userCivilIdsMap = new HashMap<>();
        int maxNoOfRec = 10_000_000;

        // Run 1 Million Times
        for (int index=0; index<maxNoOfRec; index++) {
            String currentUniqueID = UUID.randomUUID().toString();
            userCivilIds.add(currentUniqueID);
            userCivilIdsMap.put(currentUniqueID, "value_" + currentUniqueID);
        }

        // Access Performance Benchmarks
        String randomRecord = userCivilIds.get(userCivilIds.size()/2);
        System.out.println("The record to be searched is " + randomRecord);

        // Search from the Array
        long startTime = System.nanoTime();
        userCivilIds.contains(randomRecord);
        long arraySearchTotalTime = System.nanoTime() - startTime;
        System.out.printf("[Array] Time taken in Milli Seconds is %f\n", arraySearchTotalTime/1000000.0);

        // Search from the HashMap
        startTime = System.nanoTime();
        userCivilIdsMap.get(randomRecord);
        long hashMapSearchTotalTime = System.nanoTime() - startTime;
        System.out.printf("[HashMap] Time taken in Milli Seconds is %f\n", hashMapSearchTotalTime/1000000.0);

        double speedup = (double) arraySearchTotalTime / hashMapSearchTotalTime;
        System.out.printf("%nHashMap was %.0fx faster than ArrayList%n", speedup);

    }
}
