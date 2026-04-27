package org.example.formabdulmajeed;

import java.util.Arrays;

public class SortAndServe {
    public static void main(String[] args){
        if (args.length == 0) {
            System.out.println("Error: Please provide numbers to sort and an optional sort type.");
            return; // Exit the program gracefully
        }
        String sortType = "selection";
        String numbers = "";

        if (args.length == 1){
            numbers=args[0];
        }else {
            sortType = args[0].toLowerCase();
            numbers= args[1];
            if (sortType.equals("bubble") || sortType.equals("selection")){
                sortType =args[0];
                numbers = args[1];
            }
            else  {
                sortType= args[1];
                numbers = args[0];
            }
            String arg1 = args[0].toLowerCase();
            String arg2 = args[1].toLowerCase();

            if (arg1.startsWith("bub") || arg1.startsWith("sel")) {
                sortType = arg1;
                numbers = args[1];
            } else if (arg2.startsWith("bub") || arg2.startsWith("sel")) {
                sortType = arg2;
                numbers = args[0];
            } else {
                // Assume the first is numbers and the second is an invalid sort type
                numbers = args[0];
                System.out.println("Warning: Unrecognized sort type '" + args[1] + "'. Defaulting to selection sort.");
            }
        }

        String removeComma = numbers.replace(" ","");
        String[] splitNumbrrs= removeComma.trim().split(",");

        if (splitNumbrrs.length == 0 || (splitNumbrrs.length == 1 && splitNumbrrs[0].isEmpty()) || splitNumbrrs.length == ',') {
            System.out.println("Error: No valid numbers found in the input.");
            return;
        }
        int[] sortQue =new int[splitNumbrrs.length];
        for (int i =0;i<splitNumbrrs.length;i++){
            sortQue[i]= Integer.parseInt(splitNumbrrs[i]);
        }
        System.out.println("the numbers in ascending order");

        if (sortType.equals("bubble")) {
            System.out.println("bubble sort");
            bubbleSort(sortQue);
        }
        else {
            System.out.println("selection");
            selectonSort(sortQue);
        }

        System.out.println(Arrays.toString(sortQue));

        System.out.println("The three lowest priority");
        for (int i=0; i<3; i++) {
            System.out.printf("%d ", sortQue[i]);
        }
        System.out.println();
    }
    public static void selectonSort(int[] sort){
        for (int firstI = 0; firstI < sort.length; firstI++) {
            int lowestPriorIty = firstI;
            for (int i = firstI; i < sort.length; i++) {
                if (sort[i] < sort[lowestPriorIty]) {
                    lowestPriorIty = i;
                }
            }
            // Swapping
            if (lowestPriorIty != firstI) {
                int temp = sort[firstI];
                sort[firstI] = sort[lowestPriorIty];
                sort[lowestPriorIty] = temp;
            }
        }
    }
    public static void bubbleSort(int[] sort){
        for (int firstI = 0; firstI < sort.length-1; firstI++) {
            for (int j = 0; j < sort.length -firstI- 1; j++) {
                if (sort[j] > sort[j + 1]) {

                    int temp = sort[j];
                    sort[j] = sort[j + 1];
                    sort[j + 1] = temp;
                }
            }
        }
    }
}
