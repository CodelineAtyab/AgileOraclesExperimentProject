package org.example.fromaljolanda.sprint5.internQueueSorterOOPEdition;

    public class ComplaintService {
        private SortStrategy strategy;

        public ComplaintService(SortStrategy strategy) {
            this.strategy = strategy;
        }

        public int[] process(String input) {
            int[] arr = InputParser.parse(input); // Validation logic
            strategy.sort(arr); // Invoking sorting strategy

            int[] result = new int[3];
            result[0] = arr[0];
            result[1] = arr[1];
            result[2] = arr[2];

            return result; // Returning lowest three values
        }
}
