package org.example.formabdulmajeed;

import java.util.Arrays;

public class SortAndServe {
    public static void main(String[] args){
        if (args.length< 3){
            System.out.println("Please enter numbers more than 3");
            return;
        }
        String sortingType = "selection";
        int startAtZero = 0;


        String sortType = args[0].toLowerCase().replace(",", "");// replace is for removing the comma
        if (sortType.equals("bubble") || sortType.equals("selection")){
            sortingType = sortType;
            startAtZero =1;
        }

        int[] sortQue =new int[args.length-startAtZero];
        for (int i =startAtZero;i<args.length;i++){
            sortQue[i-startAtZero]= Integer.parseInt(args[i].replace(",", ""));
        }
        System.out.println("the numbers in ascending order");

        if (sortType.equals("selection")) {
            selectonSort(sortQue);
        }
        else if (sortType.equals("bubble")) {
            bubbleSort(sortQue);
        }

        System.out.println(Arrays.toString(sortQue));

        System.out.println("The three lowest priority");
        for (int i=0; i<3; i++) {
            System.out.printf("%d ", sortQue[i]);
        }
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
