package org.example.fromsafa.sprint55;

public class SimpleSorter {

    public static void main(String[] args) {

        int[] priorityArray = new int[] {5, 5, 10, 10, 4, 1, 2, 9, 7, 8};

        if (args.length == 0) {
            System.out.println("Please choose sorting algorithm: bubble or selection");
            return;
        }

        String algorithm = args[0];

        System.out.println("Original Array:");
        printArray(priorityArray);

        if (algorithm.equals("bubble")) {
            bubbleSort(priorityArray);
        } else if (algorithm.equals("selection")) {
            selectionSort(priorityArray);
        } else {
            System.out.println("Invalid option");
            return;
        }

        System.out.println("Sorted Array:");
        printArray(priorityArray);

        System.out.println("Lowest 3 priorities:");
        for (int i = 0; i < 3; i++) {
            System.out.print(priorityArray[i] + " ");
        }
    }

    public static void bubbleSort(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr.length - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    public static void selectionSort(int[] arr) {
        for (int curr = 0; curr < arr.length; curr++) {
            int minIndex = curr;

            for (int i = curr; i < arr.length; i++) {
                if (arr[i] < arr[minIndex]) {
                    minIndex = i;
                }
            }

            int temp = arr[curr];
            arr[curr] = arr[minIndex];
            arr[minIndex] = temp;
        }
    }

    public static void printArray(int[] arr) {
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
