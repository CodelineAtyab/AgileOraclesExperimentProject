package org.example.fromtibyan.sprint5;

import java.util.Objects;

public class InternQueueSorter {
    public static void main (String[] args){

        //args[0] = sorting method
        //args[1] = data to be sorted

        String[] comma = args[1].split(","); // remove comma separated values
        int[] priorities = new int[comma.length];
        for (int i = 0; i < comma.length; i++) {
            priorities[i] = Integer.parseInt(comma[i].trim()); // convert to array of integers
        }
        for (int num : priorities) {
            System.out.print(num+ " ");
        }
        System.out.println();

        if (Objects.equals(args[0], "--algorithm=selection") || Objects.equals(args[0], "")||Objects.equals(args[0], "--algorithm") ){
            selectionSort(priorities);
        } else if (Objects.equals(args[0], "--algorithm=bubble")) {
            bubbleSort(priorities);
        }else{
            System.out.println("Usage: java InternQueueSorter [--algorithm=bubble|selection] <priority1,priority2,...,priorityN>");
        }
    }
    // sorting priorities by comparing a variable with all elements then swapping min value to be at beginning of array
    public static void selectionSort(int[] priorities){
        for (int currentIteration = 0; currentIteration < priorities.length; currentIteration++) {
            int minPriority = currentIteration; // finding min value
            for (int i = currentIteration; i < priorities.length; i++) {
                if (priorities[i] < priorities[minPriority]) {
                    minPriority = i;
                }
            }
            int temp = priorities[currentIteration];// store min value
            priorities[currentIteration] = priorities[minPriority];// swap both values
            priorities[minPriority] = temp;// store in temporary variable for comparison
        }
        // print first 3 min priorities
        for (int i = 0 ; i<3;i++){
            System.out.print("Intern queue: " + priorities[i]+ " ");
        }
    }

    public static void bubbleSort(int[] priorities){

    }

}
