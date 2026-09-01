package org.example.frommariya.sprint6.internqueuesorteroop;

import java.util.List;

public class BubbleSort implements SortStrategy {
    @Override
    public void sort(List<Integer> num) {
        int numbers = num.size();
        for (int x = 0; x < numbers - 1; x++) {
            for (int y = 0; y < numbers - x; y++) {
                if (num.get(y) > num.get(y + 1)) {
                    int temp = num.get(y);
                    num.set(y, num.get(y + 1));
                    num.set(y + 1, temp);
                }

            }
        }

    }
}
