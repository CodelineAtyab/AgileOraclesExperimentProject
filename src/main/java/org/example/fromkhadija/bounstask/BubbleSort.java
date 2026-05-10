package org.example.fromkhadija.bounstask;

public class BubbleSort implements SortStrategy {
    public void sort(int[] Numbers) {
        System.out.println("\n\n*******************BubbleSort*******************");


        for (int i = 0; i < Numbers.length - 1; i++) {
            for (int j = 0; j < Numbers.length - 1 - i; j++) {

                if (Numbers[j] > Numbers[j + 1]) {

                    int temp = Numbers[j];
                    Numbers[j] = Numbers[j + 1];
                    Numbers[j + 1] = temp;
                }
            }
        }
    }
}
