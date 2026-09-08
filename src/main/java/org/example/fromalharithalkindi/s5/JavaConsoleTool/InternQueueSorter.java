package org.example.fromalharithalkindi.s5.JavaConsoleTool;

import java.util.Scanner;

public class InternQueueSorter {
    public static void main(String[] args) {
        String input=null;
        SortStrategy strategy=new SelectionSort();


        for (String arg : args) {
            if (arg.startsWith("--algorithm=")) {
                String algo = arg.substring("--algorithm=".length()).toLowerCase();
                if (algo.equals("bubble")) {
                    strategy = new BubbleSort();
                } else {
                    System.err.println("Error: Unknown algorithm '" + algo + "'. Use 'bubble' or omit for default (selection).");
                    System.exit(1);
                }
            } else {
                input = arg;
            }
        }
        if (input == null) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Enter complaint priorities (e.g. 5,3,9,1,4): ");
            input = scanner.nextLine();
        }

        InputParser parser = new InputParser();
        int[] numbers = parser.parse(input);

        ComplaintService service = new ComplaintService(strategy);
        int[] lowest = service.getLowestThree(numbers);

        System.out.println("Three lowest-priority complaints (assign to interns):");
        for (int n : lowest) {
            System.out.println("  - " + n);
        }


    }
}
