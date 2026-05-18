package org.example.fromsulaiman.s5.InternQueueSortOPP.service;

import org.example.fromsulaiman.s5.InternQueueSortOPP.strategy.SortStrategy;

public class ComplaintService {

    // Holds the sorting method (any algorithm that implements SortStrategy)
    private final SortStrategy sortStrategy;

    // Constructor: we pass the sorting algorithm from outside
    public ComplaintService(SortStrategy sortStrategy) {
        this.sortStrategy = sortStrategy;
    }

    // Get the name of the sorting algorithm
    public String getAlgorithmName() {
        return sortStrategy.getName();
    }

    // Main method: returns the 3 smallest values from the array
    public int[] getLowestThree(int[] complaints) {

        // Check if input is valid
        if (complaints == null || complaints.length < 3) {
            throw new IllegalArgumentException("Need at least 3 complaints.");
        }

        // Make a copy so we don't change the original array
        int[] copy = makeCopy(complaints);

        // Sort the copied array
        sortStrategy.sort(copy);

        // Take the first 3 smallest numbers
        int[] result = new int[3];
        result[0] = copy[0];
        result[1] = copy[1];
        result[2] = copy[2];

        return result;
    }

    // Helper method: copies an array
    private int[] makeCopy(int[] source) {
        int[] copy = new int[source.length];
        for (int i = 0; i < source.length; i++) {
            copy[i] = source[i];
        }
        return copy;
    }
}