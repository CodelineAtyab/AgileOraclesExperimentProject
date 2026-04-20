package org.example.fromsulaiman.s5.InternQueueSortOPP.strategy;

// this class PROMISES to provide sort() and getName()
public class SelectionSort implements SortStrategy {

    @Override
    public void sort(int[] numbers) {

        int n = numbers.length;  // how many numbers we have

        // Outer loop: i = the position we're trying to fill correctly
        // We go from left to right, filling one position per pass
        for (int i = 0; i < n - 1; i++) {

            int minIndex = i;  // assume current position has the smallest

            // Inner loop: look at everything AFTER position i
            // to see if there's something smaller
            for (int j = i + 1; j < n; j++) {
                if (numbers[j] < numbers[minIndex]) {
                    minIndex = j;  // found something smaller!
                }
            }

            // If we found a smaller number somewhere else, swap it
            if (minIndex != i) {
                int temp           = numbers[i];       // save i's value
                numbers[i]         = numbers[minIndex]; // put min here
                numbers[minIndex]  = temp;             // put old value there
            }
        }
    }

    @Override
    public String getName() {
        return "Selection Sort";
    }
}