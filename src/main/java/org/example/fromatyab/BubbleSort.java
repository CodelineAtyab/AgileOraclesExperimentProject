package org.example.fromatyab;

public class BubbleSort {
    /**
     * This program assumes an array of complain priorities and sort these priorities
     * In ascending order so we can display the lowest priority complains easily.
     *
     * @param args: External String Arguments
     */
    public static void main(String[] args) {
        int[] priorityArray = new int[] {5, 5, 10, 10, 4, 1, 2, 9, 7, 8};

        for (int i=0; i<priorityArray.length; i++) {
            for (int j = 0; j < priorityArray.length - 1; j++) {
                if (priorityArray[j] > priorityArray[j + 1]) {
                    // Swap both
                    int temp = priorityArray[j];
                    priorityArray[j] = priorityArray[j + 1];
                    priorityArray[j + 1] = temp;
                }
            }
        }

        // Result should be {1, 2, 4, 5, 5, 7, 8, 9, 10, 10} Arrays have a boundary -> Out of Bound Exception
        for (int currNum: priorityArray) {
            System.out.printf("%d ", currNum);
        }
    }
}
