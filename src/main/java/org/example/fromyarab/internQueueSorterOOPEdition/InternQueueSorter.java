package org.example.fromyarab.internQueueSorterOOPEdition;

import java.util.Scanner;

public class InternQueueSorter {
    public static void main(String[] args){
        String sPriorities = "";
        // create ComplaintService object to invoking sorting strategy and returning lowest three values
        ComplaintService serve = new ComplaintService();

        // use Standard Input to get inputs if no arguments are provided in the command line
        if (args.length < 1){
            args = STDIN();
        }

        // check the input provided
        for (String el: args){
            if (el.startsWith("--algorithm")){
                String[] algo = el.split("=");
                if (algo.length == 2 && (algo[1].equalsIgnoreCase("selection") || algo[1].equalsIgnoreCase("bubble"))){
                    serve.setAlgorithm(algo[1]);
                }
                else {
                    System.out.println("Unrecognizable algorithm type!.");
                    usage();
                    return;
                }
            }
            else if (el.contains(",")){
                sPriorities = el;
            }
            else {
                System.out.println("Unrecognizable arguments!.");
                usage();
                return;
            }
        }

        // check the list and get the least 3 complaint priorities
        int[] leastPriorities = new int[0];
        if (InputParser.parseInput(sPriorities).length !=0){
            leastPriorities = serve.getLeastValues(InputParser.parseInput(sPriorities));
        }

        // printing the least 3 complaint priorities
        if (leastPriorities.length == 3){
            System.out.printf("The least 3 priorities are: %d, %d, %d\n",leastPriorities[0], leastPriorities[1], leastPriorities[2]);
        }
        else {
            usage();
        }
    }

    // function to get the input using Standard Input
    public static String[] STDIN(){
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter a list of integers separated by comma(,): ");
        String list = scan.nextLine();
        System.out.println();
        System.out.print("Enter the sorting algorithm (selection / bubble) -press ENTER to use (selection) by default- : ");
        String algo = scan.nextLine();
        System.out.println();
        if (!algo.isEmpty()){
            algo = "--algorithm="+ algo;
            return new String[] {list, algo};
        }
        else {
            return new String[] {list};
        }
    }

    // function to display usage
    public static void usage(){
        System.out.println("\n[usage] -with command line arguments-");
        System.out.println("SortAndServe.java <integers>");
        System.out.println("<integers>   : list of integers separated by comma (,) >minimum 3 integers<");
        System.out.println("--algorithm  : sort algorithm (selection or bubble) default --algorithm=selection");
        System.out.println("\n[usage] -without command line arguments-");
        System.out.println("SortAndServe.java");
        System.out.println("Input   : list of integers separated by comma (,) >minimum 3 integers<");
        System.out.println("Input   : sort algorithm (selection or bubble) leave blank ot use default algorithm (selection)");
    }
}
