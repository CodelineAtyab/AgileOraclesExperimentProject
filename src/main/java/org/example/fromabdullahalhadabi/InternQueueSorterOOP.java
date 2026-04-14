package org.example.fromabdullahalhadabi;

public class InternQueueSorterOOP {

    public static void main(String[] args) {

        String input = args.length > 0 ? args[0] : "10,8,2,6,4"; // here if the user didn't provide any input we will use this default input
        SortStrategy strategy = new SelectionSort();


        if (args.length > 1 && args[1].equals("algorithm=bubble")) {
            strategy = new BubbleSort();
        }
        InputParser parser = new InputParser();
        int[] numbers = parser.parse(input);

        ComplaintService service = new ComplaintService();

        int[] result = service.getLowestThree(numbers, strategy);


        for (int num : result) {
            System.out.println(num);
        }
    }
}


    interface SortStrategy {
        void sort(int[] arr);
    }

    class SelectionSort implements SortStrategy {
        public void sort(int[] arr) {
            for (int i = 1; i < arr.length -1; i++) {
                int min = i;

                for (int j = i + 1; j < arr.length; j++) {
                    if (arr[j] < arr[min]) {
                        min = j;
                    }
                }
                int  temp = arr[min];
                arr[min]=arr[i];
                arr[i]=temp;
            }

        }

    }



    class BubbleSort implements SortStrategy {
        public void sort(int[] arr) {
            for (int i = 1; i < arr.length -1; i++) {
                for (int j=0;j< arr.length - i - 1;j++){
                    if (arr[j] > arr[j+1]) { // +1 mean the next number (If left > right to swap)
                        int temp = arr[j];
                        arr[j] = arr[j+1];
                        arr[j+1] = temp;
                    }

                }
            }
        }

    }
    class InputParser {
        public int[] parse(String input) {
            String[] parts = input.split(",");
            int[] numbers = new int[parts.length];


            for (int i = 0; i < parts.length; i++) {
                numbers[i] = Integer.parseInt(parts[i].trim());
                // remove the space & parseInt for converting to int
            }


            return numbers;
        }
    }
    class ComplaintService {
        public int[] getLowestThree(int[] arr, SortStrategy strategy) {

            if (arr.length < 3) {
                throw new IllegalArgumentException("Need at least 3 numbers");
            }
            strategy.sort(arr);
            return new int[]{arr[0], arr[1], arr[2]};
        }
    }

