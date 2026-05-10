package org.example.fromalharithalkindi.s5.JavaConsoleTool;

public class ComplaintService {

    private final SortStrategy sortStrategy;

    public ComplaintService(SortStrategy sortStrategy) {
        this.sortStrategy = sortStrategy;
    }

    public int[] getLowestThree(int[] numbers) {
        validate(numbers);
        sortStrategy.sort(numbers);
        return new int[]{ numbers[0], numbers[1], numbers[2] };
    }

    private void validate(int[] numbers) {
        if (numbers.length < 3) {
            System.err.println("Error: At least 3 complaint priorities are required. You provided: " + numbers.length);
            System.exit(1);
        }
    }
}
