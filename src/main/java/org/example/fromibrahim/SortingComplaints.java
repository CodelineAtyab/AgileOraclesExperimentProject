package org.example.fromibrahim;

        /* Methodology:
            1. Validate Arguments (Length, Remove comma, save into array)
            2. Selected Sorting Methods
            3. Print Results
         */

public class SortingComplaints {
    public static void main(String[] args) {

        String sortingMethod;
        String inputComplaint;

        //  Validate the Inputs
        if (args.length < 1){
            System.out.println("Error: No Arguments Provided!!!!");
            System.out.println("The Valid Input <Sorting Method(selection or bubble> <Complaint Numbers>");
            System.out.println("Example:java selection 3,4,5,6,7");
            return;

        } if (args.length == 1){
            sortingMethod = "selection";
            inputComplaint = args[0];

        } else if (args.length == 2) {
            sortingMethod = args[0].toLowerCase();
            inputComplaint = args[1];

            if (!sortingMethod.equals("selection") && !sortingMethod.equals("bubble")) {
                System.out.println("Error: Algorithm Must be 'selection' or 'bubble'.");
                return;
            }

        } else {
            System.out.println("Error: Too Many Arguments ");
            System.out.println("The Valid Input <Sorting Method(selection or bubble)> <Complaint Numbers>");
            System.out.println("Example:java selection ,3,4,5,6,7");
            return;
        }

        // Removing Comma
        String[] spaces;
        if (inputComplaint.contains(",")) {
            spaces = inputComplaint.split(",");
        } else {
            System.out.println("Error: Numbers Must be Separated by ','");
            return;
        }

        //  Validate Integers
        if (spaces.length < 3) {
            System.out.println("Error: Please Provide at Least 3 Complaint Numbers.");
            System.out.println("Example: 5,6,3");
            return;
        }
        // Convert Complaints to integers
        int[] complaintNumbers = new int[spaces.length];
        try {
            for (int i = 0; i < spaces.length; i++) {
                complaintNumbers[i] = Integer.parseInt(spaces[i].trim());

            }
        } catch (NumberFormatException e) {
            System.out.println("Error: All Complaints Value Must be Integers");
            return;
        }

        //  Sorting
        //  Selection Sorting
        if (sortingMethod.equals("selection")) {
            for (int i = 0; i < complaintNumbers.length; i++) {
                // Assume Current Index has the Lowest Priority
                int minPriorityIndex = i;
                // Find the smallest value in remaining array
                for (int j = i + 1; j < complaintNumbers.length; j++) {
                    if (complaintNumbers[j] < complaintNumbers[minPriorityIndex]) {
                        minPriorityIndex = j;
                    }
                }
                //  Swap Current Element with Smaller Priority Number
                int temp = complaintNumbers[i];
                complaintNumbers[i] = complaintNumbers[minPriorityIndex];
                complaintNumbers[minPriorityIndex] = temp;
            }
            //  Print Lowes 3 Complaints
            System.out.println("The Lowest Priority Complaints Using Selection Sorting are: ");
            for (int i = 0; i < 3; i++) {
                System.out.println(complaintNumbers[i]);
            }
        }

        //  Bubble Sorting
        if (sortingMethod.equals("bubble")) {
            for (int i = 0; i < complaintNumbers.length; i++) {
                for (int j = 0; j < complaintNumbers.length - 1; j++) {
                    if (complaintNumbers[j] > complaintNumbers[j + 1]) {

                        // Swaping
                        int temp = complaintNumbers[j];
                        complaintNumbers[j] = complaintNumbers[j + 1];
                        complaintNumbers[j + 1] = temp;
                    }
                }
            }

            //  Print Lowes 3 Complaints
            System.out.println("The Lowest Priority Complaints Using Bubble Sorting are:");
            for (int i = 0; i < 3; i++) {
                System.out.println(complaintNumbers[i]);
            }
        }
    }
}