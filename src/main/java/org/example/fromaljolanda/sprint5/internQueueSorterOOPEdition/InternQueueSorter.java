package org.example.fromaljolanda.sprint5.internQueueSorterOOPEdition;

import java.util.Arrays;
import java.util.Scanner;

public class InternQueueSorter {
    public static void main(String[] args) {

        String input = null; // Store the input numbers
        SortStrategy strategy;

        // ================= CLI =================
        if (args.length == 1) {
            input = args[0]; // Use Selection Sort (default)
            strategy = new SelectionSort();
        }

        else if (args.length == 2 && args[0].equals("--algorithm=bubble")) {
            input = args[1]; // Store the numbers (should be in args[1])
            strategy = new BubbleSort();
        }

        else if (args.length == 2 && args[0].equals("--algorithm=selection")) {
            input = args[1]; // Store the numbers (should be in args[1])
            strategy = new SelectionSort();
        }

        // ================= STDIN =================
        else {
            Scanner scanner = new Scanner(System.in);

            int choice = 0;
            while (true) {
                System.out.println("Choose Sorting Algorithm:");
                System.out.println("1. Bubble Sort");
                System.out.println("2. Selection Sort");
                System.out.print("Enter choice (1 or 2): ");

                String choice_input = scanner.nextLine().trim();

                if (choice_input.equals("1") || choice_input.equals("2")) {
                    choice = Integer.parseInt(choice_input);
                    break;
                }
                else {
                    System.out.println("Invalid choice! Please enter 1 or 2.\n");
                }
            }

            // Select Sorting method
            if (choice == 1) {
                strategy = new BubbleSort();
            }
            else {
                strategy = new SelectionSort();
            }

            while (true) {
                System.out.print("Enter numbers (e.g., 5,3,9,1,4): ");
                input = scanner.nextLine().trim();

                if (!input.isEmpty()) {
                    break;
                }
                else {
                    System.out.println("Input cannot be empty!\n");
                }
            }
        }

        // Display Original List
        System.out.println("Original List: " + Arrays.toString(input.split(",")));

        int[] result;
        try {
            ComplaintService complaint_service = new ComplaintService(strategy);
            result = complaint_service.process(input);
        }

        catch (Exception e) {
            System.out.println("Error.. Invalid input!");
            return;
        }

        System.out.print("Sorted List Using " + strategy.getName() + ": ");

        strategy.sort(result);

        System.out.println(Arrays.toString(result));

        // Print the first 3 smallest numbers
        System.out.println("Intern queue: " + result[0] + ", " + result[1] + ", " + result[2]);
    }
}
