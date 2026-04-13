package org.example.fromyarab.internQueueSorterOOPEdition;

import java.util.Arrays;

public class BubbleSort implements SortStrategy{

    @Override
    public void sort(int[] list) {
        int temp;
        for (int i=list.length; i>0; i--){
            for (int j=0; j<i-1; j++){
                // swaping
                if (list[j] > list[j+1]){
                    temp = list[j];
                    list[j] = list[j+1];
                    list[j+1] = temp;
                }
            }
        }
        System.out.println("The list sorted using Bubble Sort Algorithm: "+ Arrays.toString(list));
    }
}
