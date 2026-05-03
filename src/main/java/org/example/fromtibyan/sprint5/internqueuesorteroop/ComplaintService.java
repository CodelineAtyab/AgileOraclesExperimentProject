package org.example.fromtibyan.sprint5.internqueuesorteroop;

import java.util.Arrays;

public class ComplaintService {
    public int[] getLowestThree(int[] priorities, SortStrategy strategy) {
        if (priorities.length < 3) {
            System.err.println("There must be at least 3 priorities");
            return new int[0];
        }
        strategy.sort(priorities);
        return Arrays.copyOf(priorities, 3);
    }
}