package org.example.fromsulaiman.s5.InternQueueSortOPP.strategy;

public interface SortStrategy {
    // Rule 1: you must be able to sort an array of integers
    // void  = returns nothing
    // int[] = an array of integers (the complaints list)
    void sort(int[] numbers);

    // Rule 2: you must have a name (for display on screen)
    String getName();
}
