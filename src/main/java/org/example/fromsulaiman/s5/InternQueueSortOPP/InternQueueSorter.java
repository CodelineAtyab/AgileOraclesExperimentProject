package org.example.fromsulaiman.s5.InternQueueSortOPP;

import org.example.fromsulaiman.s5.InternQueueSortOPP.service.ComplaintService;
import org.example.fromsulaiman.s5.InternQueueSortOPP.strategy.BubbleSort;
import org.example.fromsulaiman.s5.InternQueueSortOPP.strategy.SelectionSort;
import org.example.fromsulaiman.s5.InternQueueSortOPP.strategy.SortStrategy;
import org.example.fromsulaiman.s5.InternQueueSortOPP.util.InputParser;

import java.util.Scanner;

public class InternQueueSorter {

    public static void main(String[] args) {

        // Always print the banner first — so you know the program is running
        printBanner();

        // STEP A: read the arguments
        boolean useBubble = false;
        String  dataArg   = null;

        for (String arg : args) {
            if (arg.equalsIgnoreCase("--algorithm=bubble")) {
                useBubble = true;
            } else {
                dataArg = arg;
            }
        }

        // STEP B: get input from CLI arg OR STDIN
        String rawInput = resolveInput(dataArg);

        // No input at all → show usage guide and exit
        if (rawInput == null) {
            printUsage();          // <── shows HOW to run the program
            System.exit(1);
        }

        // STEP C: parse and validate the input
        InputParser parser = new InputParser();
        int[]       numbers;

        try {
            numbers = parser.parse(rawInput);
        } catch (IllegalArgumentException e) {
            printError(e.getMessage());
            System.exit(1);
            return;
        }

        // STEP D: choose the sorting strategy
        SortStrategy strategy;
        if (useBubble) {
            strategy = new BubbleSort();
        } else {
            strategy = new SelectionSort();  // default
        }

        // STEP E: run the service
        ComplaintService service = new ComplaintService(strategy);
        int[] lowest;

        try {
            lowest = service.getLowestThree(numbers);
        } catch (IllegalArgumentException e) {
            printError(e.getMessage());
            System.exit(1);
            return;
        }

        // STEP F: print the result
        printResult(lowest, service.getAlgorithmName(), numbers.length, rawInput);
    }

    private static String resolveInput(String cliArg) {
        // Priority 1: CLI argument
        if (cliArg != null && !cliArg.trim().isEmpty()) {
            return cliArg.trim();
        }
        // Priority 2: STDIN (piped input)
        try {
            if (System.in.available() > 0) {
                Scanner sc = new Scanner(System.in);
                if (sc.hasNextLine()) {
                    return sc.nextLine().trim();
                }
            }
        } catch (Exception ignored) {}

        return null;
    }

    // Startup banner
    private static void printBanner() {
        System.out.println();
        System.out.println("==========================================");
        System.out.println("        INTERN QUEUE SORTER               ");
        System.out.println("  OOP Edition - Strategy Pattern Demo     ");
        System.out.println("==========================================");
        System.out.println();
    }

    private static void printUsage() {
        System.out.println("  HOW TO RUN:");
        System.out.println();
        System.out.println("  Option 1 - Selection Sort (default):");
        System.out.println("    java InternQueueSorter 5,3,9,1,4");
        System.out.println();
        System.out.println("  Option 2 - Bubble Sort:");
        System.out.println("    java InternQueueSorter --algorithm=bubble 5,3,9,1,4");
        System.out.println();
        System.out.println("  Rules:");
        System.out.println("    - At least 3 numbers required");
        System.out.println("    - Whole numbers only (no decimals, no letters)");
        System.out.println("    - Comma-separated, no spaces");
        System.out.println("==========================================");
    }

    private static void printResult(int[] lowest, String algorithmName,
                                    int totalCount, String originalInput) {
        System.out.println("  INPUT     : " + originalInput);
        System.out.println("  ALGORITHM : " + algorithmName);
        System.out.println("  TOTAL     : " + totalCount + " complaints");
        System.out.println();
        System.out.println("==========================================");
        System.out.println("   3 LOWEST PRIORITY COMPLAINTS:         ");
        System.out.println("==========================================");
        System.out.println();
        for (int i = 0; i < lowest.length; i++) {
            System.out.println("    Rank " + (i + 1) + "  ->  Priority #" + lowest[i]);
        }
        System.out.println();
        System.out.println("  ACTION: Assign these 3 tickets to interns.");
        System.out.println("==========================================");
        System.out.println();
    }

    private static void printError(String message) {
        System.out.println();
        System.out.println("==========================================");
        System.out.println("                 ERROR                   ");
        System.out.println("==========================================");
        System.out.println(message);
        System.out.println();
        printUsage();
    }
}