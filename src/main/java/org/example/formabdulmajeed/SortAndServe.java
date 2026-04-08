package org.example.formabdulmajeed;

import java.util.Arrays;

public class SortAndServe {
    public static void main(String[] args){
        if (args.length< 3){
            System.out.println("Please enter numbers more than 3");
            return;
        }

        int[] sortQue =new int[args.length];
        for (int i =0;i<sortQue.length;i++){
            sortQue[i]= Integer.parseInt(args[i]);
            //System.out.print(sortQue[i].length);
        }
//        Arrays.stream(sortQue).forEach((currentNum) ->{
//            System.out.printf("%d",currentNum);
//        });

        for (int firstI =0; firstI < sortQue.length;firstI++){
            int lowestPriorIty = firstI;
            for (int i= firstI; i < sortQue.length;i++){
                if (sortQue[i]<sortQue[lowestPriorIty]){
                    lowestPriorIty = i;
                }
            }
            // Swapping
            if (lowestPriorIty != firstI) {
                int temp = sortQue[firstI];
                sortQue[firstI] = sortQue[lowestPriorIty];
                sortQue[lowestPriorIty] = temp;
                Arrays.stream(sortQue).forEach((currentNum) -> {
                    System.out.printf("%d ", currentNum);
                });
                System.out.println();}


        }
        for (int i=0; i<3; i++) {
            System.out.printf("%d ", sortQue[i]);
        }
        System.out.println();

    }
}
