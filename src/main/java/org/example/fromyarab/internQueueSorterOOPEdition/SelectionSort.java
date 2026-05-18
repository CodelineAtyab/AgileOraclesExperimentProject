package org.example.fromyarab.internQueueSorterOOPEdition;

import java.util.Arrays;

public class SelectionSort implements SortStrategy{

    // implementation of sort function to sort using Bubble Sort Algorithm
    @Override
    public void sort(int[] list) {
        int smallestIndex;
        int temp;
        for (int i=0; i< list.length-1; i++){
            smallestIndex = i;
            for (int j=i+1; j<list.length; j++){
                if (list[j] < list[smallestIndex]){
                    smallestIndex = j;
                }
            }
            // swaping
            if (smallestIndex != i){
                temp = list[i];
                list[i] = list[smallestIndex];
                list[smallestIndex] = temp;
            }
        }
        System.out.println("The list sorted using Selection Sort Algorithm: "+ Arrays.toString(list));
    }
}
