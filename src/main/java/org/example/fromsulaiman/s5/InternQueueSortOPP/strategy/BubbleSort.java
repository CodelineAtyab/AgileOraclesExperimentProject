package org.example.fromsulaiman.s5.InternQueueSortOPP.strategy;

public class BubbleSort implements SortStrategy {

    @Override
    public void sort(int[] numbers) {

        int     n       = numbers.length;
        boolean swapped;

        // Outer loop: each pass guarantees the LARGEST remaining
        // number moves to the correct end position
        for (int i = 0; i < n - 1; i++) {

            swapped = false; // reset for this pass

            // Inner loop: walk through pairs of neighbors
            // We subtract i because the last i elements are already sorted
            for (int j = 0; j < n - 1 - i; j++) {

                // If left neighbor is bigger than right → swap them
                if (numbers[j] > numbers[j + 1]) {
                    int temp       = numbers[j];
                    numbers[j]     = numbers[j + 1];
                    numbers[j + 1] = temp;
                    swapped        = true;
                }
            }

            // OPTIMIZATION: if zero swaps happened this whole pass,
            // the array is already sorted → stop early, no point continuing
            if (!swapped) {
                break;
            }
        }
    }

    @Override
    public String getName() {
        return "Bubble Sort";
    }
}