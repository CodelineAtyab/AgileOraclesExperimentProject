package org.example.fromatyab;

import java.util.Arrays;

public class SelectionSort {
    public static void main(String[] args) {
        int[] priorityArray = new int[] {5, 5, 10, 10, 4, 1, 2, 9, 7, 8};
        // [10, 10, 9, 8, 7, 5, 5, 4, 2, 1]

        /* 1. Compare maxPriorityIndex with every number
         *  2. If any number is greater than maxPriorityIndex, then maxPriorityIndex becomes that number
         * */
        Arrays.stream(priorityArray).forEach((currNum) -> {
            System.out.printf("%d ", currNum);
        });
        System.out.println();

        for (int currIter = 0; currIter < priorityArray.length; currIter++) {
            // Want to sort the complaints in a way that the data is in descending order (High Priority -> Low Priority)
            int maxPriorityIndex = currIter;
            for (int i=currIter; i<priorityArray.length; i++) {
                if (priorityArray[i] > priorityArray[maxPriorityIndex]) {
                    maxPriorityIndex = i;
                }
            }
            // Swapping
            int temp = priorityArray[currIter];
            priorityArray[currIter] = priorityArray[maxPriorityIndex];
            priorityArray[maxPriorityIndex] = temp;

            // {10, 5, 5, 10, 4, 1, 2, 9, 7, 8}
            Arrays.stream(priorityArray).forEach((currNum) -> {
                System.out.printf("%d ", currNum);
            });
            System.out.println();
        }
        // Print the result
        for (int i=0; i<3; i++)
            System.out.printf("%d ", priorityArray[i]);

        System.out.println();
    }
}
