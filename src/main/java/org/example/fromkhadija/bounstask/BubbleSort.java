package org.example.fromkhadija.bounstask;

public class BubbleSort implements SortStrategy {
    public void sort(int[] Numbers) {
        System.out.println("*******************BubbleSort*******************");


        for (int j = 0; j < Numbers.length - 1; j++) {
            if (Numbers[j] > Numbers[j + 1]) {
                //Swap:
                int temp = Numbers[j];
                Numbers[j] = Numbers[j + 1];
                Numbers[j + 1] = temp;
            }
        }
    }
}
