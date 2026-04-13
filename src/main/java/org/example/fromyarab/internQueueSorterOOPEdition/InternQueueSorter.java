package org.example.fromyarab.internQueueSorterOOPEdition;

public class InternQueueSorter {
    public static void main(String[] args){
        String sPriorities = "";
        ComplaintService serve = new ComplaintService();
        if (args.length < 1){
            System.out.println("Must provide a list of integers!.");
            usage();
            return;
        }

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
                sPriorities = args[0];
            }
            else {
                System.out.println("Unrecognizable arguments!.");
                usage();
                return;
            }
        }

        int[] leastPriorities = serve.getLeastValues(InputParser.parseInput(sPriorities));

        if (leastPriorities.length >= 3){
            System.out.printf("The least 3 priorities are: %d, %d, %d\n",leastPriorities[0], leastPriorities[1], leastPriorities[2]);
        }
        else {
            usage();
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
