package org.example.fromkhadija.bounstask;

    public class ComplaintService {
        private SortStrategy strategy;

        public ComplaintService(SortStrategy strategy) {
            this.strategy = strategy;
        }

        public int[] processComplaint(int[] ComplainPriorityNumber) {

            //validation
            if (ComplainPriorityNumber.length < 3) {
                throw new IllegalArgumentException("ERROR: Must ENTER AT LEAST 3 NUMBERS");
            }
            //sorting
            strategy.sort(ComplainPriorityNumber);

            //After Sorted
            System.out.print("Sorted Numbers: ");
            for (int i = 0; i < ComplainPriorityNumber.length; i++) {
                System.out.print(ComplainPriorityNumber[i] + " ");
            }
            System.out.println();

            //List The Lowest Three Numbers:
            int [] result = new int[3];
            System.out.print("Lowest Three Complaints: ");
            for (int i = 0; i < 3; i++) {
                result[i] = ComplainPriorityNumber[i];
                System.out.print(result[i] + " ");
            }
            System.out.println();
            return result;
        }
    }
