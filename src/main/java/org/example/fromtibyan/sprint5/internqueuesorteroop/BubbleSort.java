package org.example.fromtibyan.sprint5.internqueuesorteroop;

public class BubbleSort implements SortStrategy {
    @Override
    public void sort(int[] priorities) {
        for (int i = 0; i < priorities.length; i++) {
            for (int j = 0; j < priorities.length - 1; j++) {
                if (priorities[j] > priorities[j + 1]) {
                    // must compare variable with adjacent element
                    int temp = priorities[j];// store min value
                    priorities[j] = priorities[j + 1];// swap both values
                    priorities[j + 1] = temp;// store in temporary variable for comparison
                }
            }
        }
    }
}
