package org.example.fromtibyan.sprint5.internqueuesorter;

import java.util.Objects;

public class InternQueueSorter {
    public static void main(String[] args) {

        //args[0] = sorting method
        //args[1] = data to be sorted
        int[] priorities;

        // so it doesnt throw an exception when args are empty
        if (args.length < 1){
            System.out.println("arguments cannot be empty");
        }else if(args.length == 1 && args[0].contains(",")) {
            String[] comma = args[0].split(","); // remove comma separated values
            if (comma.length<3){// making sure user inputs 3 or more priority values
                    System.out.println("There must be at least 3 priority levels.");
                }else {
                    priorities = new int[comma.length];
                    for (int i = 0; i < comma.length; i++) {
                        priorities[i] = Integer.parseInt(comma[i].trim()); // convert to array of integers
                    }
                    selectionSort(priorities); // making selection sort the default
            }
        }else if (args.length == 2 && args[1].contains(",")) {
            String[] comma = args[1].split(","); // remove comma separated values
            if (comma.length<3){// making sure user inputs 3 or more priority values
                System.out.println("There must be at least 3 priority levels.");
            }else {
                priorities = new int[comma.length];
                for (int i = 0; i < comma.length; i++) {
                    priorities[i] = Integer.parseInt(comma[i].trim()); // convert to array of integers
                }
                if (Objects.equals(args[0], "--algorithm=selection")) {
                    selectionSort(priorities);
                } else if (Objects.equals(args[0], "--algorithm=bubble")) {
                    bubbleSort(priorities);
                } else {
                    System.out.println("Usage: java InternQueueSorter [--algorithm=bubble|selection] <priority1,priority2,...,priorityN>");
                }
            }
        }else {
            System.out.println("Usage: java InternQueueSorter [--algorithm=bubble|selection] <priority1,priority2,...,priorityN>");
        }
    }

    // sorting priorities by comparing a variable with all elements then swapping min value to be at beginning of array
    public static void selectionSort(int[] priorities) {
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

    // sorting priorities by comparing a variable with adjacent element then swapping min value
    public static void bubbleSort(int[] priorities) {
        for (int i = 0; i < priorities.length; i++) {
            for (int j = 0; j < priorities.length - 1; j++) {
                if (priorities[j] > priorities[j + 1]) {
                    // must compare variable with adjacent element
                    int temp = priorities[j];// store min value
                    priorities[j] = priorities[j + 1];// swap both values
                    priorities[j + 1] = temp;// store in temporary variable for comparison
                }
            }
        }
        System.out.print("Intern queue: ");
        // print first 3 min priorities
        for (int i = 0; i < 3; i++) {
            System.out.print(priorities[i] + " ");
        }
    }
}
// to run program using CMD
//java -cp target/classes org.example.fromtibyan.sprint5.internqueuesorter.InternQueueSorter