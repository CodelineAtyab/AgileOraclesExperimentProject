package org.example.fromabdullahalhadabi;

import java.util.Scanner;

public class InternQueueSorterOOP {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter numbers : ");
        String input = scanner.nextLine();

        System.out.println("Choose algorithm:");
        System.out.println("1 - Selection Sort");
        System.out.println("2 - Bubble Sort");

        int choice = scanner.nextInt();

        SortStrategy strategy;

        if (choice == 2) {
            strategy = new BubbleSort();
        } else {
            strategy = new SelectionSort();
        }

        input = input.replace(" ", ",");

        InputParser parser = new InputParser();
        int[] numbers = parser.parse(input);

        ComplaintService service = new ComplaintService();
        int[] result = service.getLowestThree(numbers, strategy);

        System.out.println("Lowest 3 numbers:");
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
            for (int i = 0; i < arr.length -1; i++) {
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
            for (int i = 0; i < arr.length -1; i++) {
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

