package org.example.fromtibyan.sprint5.internqueuesorteroop;

import static org.example.fromtibyan.sprint5.internqueuesorteroop.InternQueueSorter.priorities;

public class SelectionSort {
    public static void sort(){
        for (int currentIteration = 0; currentIteration < priorities.length; currentIteration++) {
            int minPriority = currentIteration; // finding min value
            for (int i = currentIteration; i < priorities.length; i++) {
                if (priorities[i] < priorities[minPriority]) {
                    minPriority = i;
                }
            }
            // must compare variable with all elements
            int temp = priorities[currentIteration];// store min value
            priorities[currentIteration] = priorities[minPriority];// swap both values
            priorities[minPriority] = temp;// store in temporary variable for comparison
        }
        System.out.print("Intern queue: ");
        // print first 3 min priorities
        for (int i = 0; i < 3; i++) {
            System.out.print(priorities[i] + " ");
        }
    }
}
