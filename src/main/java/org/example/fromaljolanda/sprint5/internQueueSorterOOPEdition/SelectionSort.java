package org.example.fromaljolanda.sprint5.internQueueSorterOOPEdition;

public class SelectionSort implements SortStrategy {

    @Override
    public void sort(int[] array) {

        int number_of_element = array.length; // Number of element

        for (int i = 0; i < number_of_element - 1; i++) {
            int min_index = i;

            // Find lowest element
            for (int j = i + 1; j < number_of_element; j++) {
                if (array[j] < array[min_index]) {
                    min_index = j;
                }
            }

            // Swapping
            int temp = array[min_index];
            array[min_index] = array[i];
            array[i] = temp;
        }
    }
}
