package org.example.fromtibyan.sprint5.internqueuesorteroop;

import java.util.Scanner;

interface Sort{
    // figure it out
}
public class InternQueueSorter {
    static int[] priorities;
    public static void main(String[] args){
        Scanner userInput = new Scanner(System.in);
        if (args.length>0){
            String[] comma = args[0].split(","); // remove comma separated values
            priorities = new int[comma.length];
            for (int i = 0; i < comma.length; i++) {
                priorities[i] = Integer.parseInt(comma[i].trim()); // convert to array of integers
            }
            SelectionSort.sort();

        }else {
            System.out.println("Select a sorting algorithm.\n 1.Selection(default)\n 2.Bubble");
            System.out.println("Choose a number");
            int choice = userInput.nextInt();
            System.out.println("Enter priority levels, each separated by a comma.(eg. 10,8,2,6,4)");
            String PriorityList = userInput.next();
            String[] comma = PriorityList.split(","); // remove comma separated values
            priorities = new int[comma.length];
            for (int i = 0; i < comma.length; i++) {
                priorities[i] = Integer.parseInt(comma[i].trim()); // convert to array of integers
            }
           if (choice == 1){
               SelectionSort.sort();
            }else if(choice == 2){
               BubbleSort.sort();
           }else {
               System.out.println("Select either 1 or 2.");
           }
        }


    }
}
