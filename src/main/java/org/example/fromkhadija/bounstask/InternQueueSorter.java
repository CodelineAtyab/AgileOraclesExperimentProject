package org.example.fromkhadija.bounstask;

import java.util.Scanner;

public class InternQueueSorter {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        String input;
        String algorithm = "selection";//default

        //check optional flag
        if(args.length > 0) {

            input = "";
            for (int i = 0; i < args.length; i++) {

                //Optional flag:
                if (args[i].equals("--algorithm=bubble")) {
                    algorithm = "bubble";

                } else {
                    input += args[i] + " ";
                }
            }
            input = input.trim();

        }else {
            System.out.println("Enter Numbers: ");
            input = scan.nextLine();
        }

        try {

            int[] data = InputParser.parse(input);
            System.out.println("Before sorting");
            for (int i = 0; i < data.length; i++) {
                System.out.print(data[i] + " ");

            }
            SortStrategy strategy;

            if (algorithm.equals("bubble")) {
                strategy = new BubbleSort();
            } else {
                strategy = new SelectionSort();
            }

            ComplaintService complainservice = new ComplaintService(strategy);
            complainservice.processComplaint(data);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}

