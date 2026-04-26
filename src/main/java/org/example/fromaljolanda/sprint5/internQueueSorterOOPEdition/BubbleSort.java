package org.example.fromaljolanda.sprint5.internQueueSorterOOPEdition;

public class BubbleSort implements SortStrategy {
    @Override
    public void sort(int[] array) {
        int number_of_element = array.length;
        for (int i = 0; i < number_of_element - 1; i++) {
            for (int j = 0; j < number_of_element - i - 1; j++) {
                // Swap array[j] and array[j+1]
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    @Override
    public String getName() {
        return "Bubble Sort";
    }
}
