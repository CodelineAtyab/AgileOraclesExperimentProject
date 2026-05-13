package org.example.fromkhadija.bounstask;

public class SelectionSort implements SortStrategy {

    @Override
    public void sort(int[] Numbers) {

        System.out.println();
        System.out.println("*******************selectionSort*******************");

        for (int currIter = 0; currIter < Numbers.length - 1; currIter++) {

            int minPriorityNum = currIter;

            for (int i = currIter + 1; i < Numbers.length; i++) {
                if (Numbers[i] < Numbers[minPriorityNum]) {
                    minPriorityNum = i;
                }
            }
            // Swapping
            int temp = Numbers[currIter];
            Numbers[currIter] = Numbers[minPriorityNum];
            Numbers[minPriorityNum] = temp;
        }
    }
}
