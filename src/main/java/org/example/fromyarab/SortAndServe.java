package org.example.fromyarab;

import java.util.Arrays;

public class SortAndServe {
    public static void main(String[] args){
        String[] tempPriorities = new String[0];
        String algorithm = "selection";
        // extract the elements from the command line argument
        if (args.length < 1){
            System.out.println("Must provide a list of integers!.");
            usage();
            return;
        }

        for (String el: args){
            if (el.startsWith("--algorithm")){
                String[] algo = el.split("=");
                if (algo.length == 2 && (algo[1].equalsIgnoreCase("selection") || algo[1].equalsIgnoreCase("bubble"))){
                    algorithm = algo[1].toLowerCase();
                }
                else {
                    System.out.println("Unrecognizable algorithm type!.");
                    usage();
                    return;
                }
            }
            else if (el.contains(",")){
                tempPriorities = args[0].split(",");
            }
            else {
                System.out.println("Unrecognizable arguments!.");
                usage();
                return;
            }
        }

        // check the list of priorities
        if (tempPriorities.length<3){
            System.out.println("The list should contains at least 3 elements separated by comma(,)!.");
            usage();
            return;
        }
        for (String priority : tempPriorities) {
            if (!isNumeric(priority)) {
                System.out.println("The list should contains only integers!.");
                usage();
                return;
            }
        }

        // convert the list into list of integers
        int[] priorities = new int[tempPriorities.length];
        for (int i=0; i< tempPriorities.length; i++){
            priorities[i] = Integer.parseInt(tempPriorities[i]);
        }

        // sort and print the sorted list
        if (algorithm.equals("selection")){
            selectionSort(priorities);
        }
        else {
            bubbleSort(priorities);
        }

        // show the three lowest-priority complaints for the intern
        System.out.printf("The three lowest priority complaints are: %d, %d, %d\n", priorities[0], priorities[1], priorities[2]);
    }
    // function to sort using Bubble Sort Algorithm
    public static void bubbleSort(int[] list){
        int temp;
        for (int i=list.length; i>0; i--){
            for (int j=0; j<i-1; j++){
                // swaping
                if (list[j] > list[j+1]){
                    temp = list[j];
                    list[j] = list[j+1];
                    list[j+1] = temp;
                }
            }
        }
        System.out.println("The list sorted using Bubble Sort Algorithm: "+ Arrays.toString(list));
    }

    // function to sort using Selection Sort Algorithm
    public static void selectionSort(int[] list){
        int smallestIndex;
        int temp;
        for (int i=0; i< list.length-1; i++){
            smallestIndex = i;
            for (int j=i+1; j<list.length; j++){
                if (list[j] < list[smallestIndex]){
                    smallestIndex = j;
                }
            }
            // swaping
            if (smallestIndex != i){
                temp = list[i];
                list[i] = list[smallestIndex];
                list[smallestIndex] = temp;
            }
        }
        System.out.println("The list sorted using Selection Sort Algorithm: "+ Arrays.toString(list));
    }

    // function to check if the string is integer
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }

    // function to display usage
    public static void usage(){
        System.out.println("\n[usage]");
        System.out.println("SortAndServe.java <integers>");
        System.out.println("<integers>   : list of integers separated by comma (,) >minimum 3 integers<");
        System.out.println("--algorithm  : sort algorithm (selection or bubble) default --algorithm=selection");
    }
}