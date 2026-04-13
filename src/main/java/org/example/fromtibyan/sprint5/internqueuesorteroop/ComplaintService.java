package org.example.fromtibyan.sprint5.internqueuesorteroop;

import java.util.Arrays;

public class ComplaintService {
    public int[] getLowestThree(int[] priorities, SortStrategy strategy) {
        if (priorities.length < 3) {
            System.err.println("There must be at least 3 priorities");
            System.exit(0); // exit system if priorities less than 3
        }
        strategy.sort(priorities);
        return Arrays.copyOf(priorities, 3);
    }
}


