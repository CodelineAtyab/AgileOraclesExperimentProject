package org.example.fromrima.sortcomplaints;
import java.util.Arrays;
import java.util.Scanner;

public class ComplaintsSorter {
    public static void main(String[] args) {
        String algorithm = "selection"; //by defaults , if the user not chose the sorting type
        int[] priorities = null;

        // reading the command-line arguments
        for (String arg : args) {
            if (arg.startsWith("--algorithm=")) {
                algorithm = arg.substring("--algorithm=".length()).toLowerCase();//convert user input to lowercase
            } else {
                priorities = parseInput(arg); //assume its numbers list and convert it to integer array
            }
        }
        // if there is no numbers provided through the command line,then use keyboard input
        if (priorities == null) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Enter at least 3 integer numbers separated by commas: ");
            String userInput = scanner.nextLine();
            priorities = parseInput(userInput);
            scanner.close();
        }
        // validate user input numbers minimum is 3
        if (priorities.length < 3) {
            System.out.println("Error: Please provide at least 3 integers >>>>");
            return;
        }
        // choose sorting algorithm
        if (algorithm.equals("bubble")) {
            bubbleSort(priorities);
        } else {
            selectionSort(priorities);
        }
        // Print sorted list within the sort type (selection / bubble)
        System.out.println("Sorted list (" + algorithm + " sort)= " + Arrays.toString(priorities));
        // Printing the 3 lowest-priority complaints (Intern queue)
        System.out.println("The 3 lowest-priority complaints (Intern queue)= " + priorities[0] + ", " + priorities[1] + ", " + priorities[2]);
    }

    // converting the comma which is separated string to int array
    private static int[] parseInput(String input) {
        String[] values = input.split(",");
        int[] numbers = new int[values.length];
        for (int i = 0; i < values.length; i++) {
            numbers[i] = Integer.parseInt(values[i].trim());
        }
        return numbers;
    }

    // Selection Sort >>>>
    //i is the current position
    //j is  searching forward
    // Repeatedly selects the smallest remaining value.
    public static void selectionSort(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {
            int minIndex = i;
            for (int j = i + 1; j < array.length; j++) {
                if (array[j] < array[minIndex]) {
                    minIndex = j;
                }
            }
            // safe swap
            int temp = array[i];
            array[i] = array[minIndex];
            array[minIndex] = temp;
        }
    }

    // Bubble Sort >>>>
    // i is counts how many passes have been completed
    //j is compares neighboring elements
    // Swaps adjacent values until array becomes sorted.
    public static void bubbleSort(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {
            for (int j = 0; j < array.length - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    // safe swap using temp variable, and using temp to temporary storage during swap
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}