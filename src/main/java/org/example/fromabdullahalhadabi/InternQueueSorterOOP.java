package org.example.fromabdullahalhadabi;
import java.util.Scanner;


/**
 * ================= HOW TO RUN THIS PROGRAM =================
 *
 * 1. Compile the project (if needed):
 *    javac -d . InternQueueSorterOOP.java
 *
 * 2. Run from terminal:
 *    java org.example.fromabdullahalhadabi.InternQueueSorterOOP
 *
 * 3. When the program starts:
 *    - Enter numbers separated by comma or space
 *      Example:
 *          10,8,2,6,4
 *          OR
 *          10 8 2 6 4
 *
 *    - Choose sorting algorithm:
 *          1 → Selection Sort
 *          2 → Bubble Sort
 *          input 1 or 2 and press Enter
 *
 * 4. Output:
 *    The program will display the lowest 3 numbers.
 *
 * NOTE:
 * - You must enter at least 3 numbers.
 * - If you enter invalid input, the program may throw an error.
 * ==========================================================
 */

public class InternQueueSorterOOP {

    public static void main(String[] args) {

        String input;
        SortStrategy strategy = new SelectionSort(); // default

        // CLI INPUT
        if (args.length > 0) {
            input = args[0];

            // check for optional flag
            if (args.length > 1 && args[1].equals("--algorithm=bubble")) {
                strategy = new BubbleSort();
            }

        } else {
            //  STDIN
            Scanner scanner = new Scanner(System.in);

            System.out.println("Enter numbers : ");
            input = scanner.nextLine();

            System.out.println("Choose algorithm:");
            System.out.println("1 - Selection Sort");
            System.out.println("2 - Bubble Sort");

            int choice = scanner.nextInt();

            if (choice == 2) {
                strategy = new BubbleSort();
            }
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

