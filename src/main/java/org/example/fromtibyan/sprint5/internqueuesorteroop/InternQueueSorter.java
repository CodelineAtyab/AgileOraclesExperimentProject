package org.example.fromtibyan.sprint5.internqueuesorteroop;

import java.util.Arrays;
import java.util.Objects;
import java.util.Scanner;

interface SortStrategy {
    void sort(int[] priorities);
}

public class InternQueueSorter {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        int[] priorities = null;
        int[] lowestThree;
        ComplaintService service = new ComplaintService(); // creating a new object
        //args[0] = sorting method
        //args[1] = data to be sorted
        if (args.length == 1) {
            priorities = InputParser.parse(args[0]); // checking args[0] if it contains ','

            if (priorities != null) {
                lowestThree = service.getLowestThree(priorities, new SelectionSort()); // checking if at least 3 priorities are given & default is selection
                System.out.println("Intern queue: " + Arrays.toString(lowestThree));
            }
        } else if (args.length == 2) {
            priorities = InputParser.parse(args[1]); // checking args[0] if it contains ','
            if (Objects.equals(args[0], "--algorithm=selection")) {
                if (priorities != null) {
                    lowestThree = service.getLowestThree(priorities, new SelectionSort());
                    System.out.println("Intern queue: " + Arrays.toString(lowestThree));
                }
            } else if (Objects.equals(args[0], "--algorithm=bubble")) {
                if (priorities != null) {
                    lowestThree = service.getLowestThree(priorities, new BubbleSort());
                    System.out.println("Intern queue: " + Arrays.toString(lowestThree));
                }
            }
        } else if (args.length > 2) {
            System.err.println("Usage: java -cp target/classes org.example.fromtibyan.sprint5.internqueuesorteroop.InternQueueSorter [--algorithm=bubble|selection] <priority1,priority2,...,priorityN>");
        } else {
            System.out.println("Select a sorting algorithm.\n 1.Selection(default)\n 2.Bubble");
            int choice;
            SortStrategy strategy = new SelectionSort(); // making selection sort default
            if (userInput.hasNextInt()) {
                choice = userInput.nextInt();
                System.out.println("Enter priority levels, each separated by a comma.(eg. 10,8,2,6,4)");
                String input = userInput.next();
                priorities = InputParser.parse(input);// checking input if it contains ','
                if (choice == 1) {
                    strategy = new SelectionSort();
                } else if (choice == 2) {
                    strategy = new BubbleSort();
                }
            } else {
                System.out.println("Invalid input. please choose 1 or 2.");
            }
            if (priorities != null) {
                lowestThree = service.getLowestThree(priorities, strategy);
                System.out.println("Intern queue: " + Arrays.toString(lowestThree));
            }
        }
    }
}