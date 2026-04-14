package org.example.fromrazan.sprint5;


import java.util.Scanner;





public class JavaConsol {

    public static void main(String[] args) {

        String input = null;
        String algorithm = "selection"; //default

        //read CLI arguments

        for (String arg : args) {
            if (arg.startsWith("--algorithm--")) {
                algorithm = arg.split("=")[1].toLowerCase();
            } else {
                input = arg;
            }
        }

//STIDIN ---> use if there are no input

        if (input == null) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("enter the numbers: ");
            input = scanner.nextLine();
        }

        try {
            //parse
            int[] numbers = parseInput(input);


            //choose algorithm

            if (algorithm.equals("bubble")) {
                BubbleSort(numbers);

            } else {
                SelecionSort(numbers);

            }

            //get lowest three
            int[] result = getLowestThree(numbers);


            //output
            System.out.println("result : ");
            for (int num : result) {
                System.out.println(num);

            }


        } catch (IllegalArgumentException e) {
            System.out.println("error: " + e.getMessage());
        }

    }
    //input parser

    public static int[] parseInput(String input) {

        if (input == null || input.trim().isEmpty()) {
            throw new IllegalArgumentException("THE INPUT IS EMPTY : ");
        }

        String[] parts = input.split(",");
        int[] numbers = new int[parts.length];

        for (int i = 0; i < parts.length; i++) {

            try {
                numbers[i] = Integer.parseInt(parts[i].trim());
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(" THE VALUE IS INCORRECT" + parts[i]);
            }
        }

        return numbers;

    }

    //selecion sort


    public static void SelecionSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            int minIndex = i;

            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }


            int temp = arr[minIndex];
            arr[minIndex] = arr[i];
            arr[i] = temp;
        }
    }

    // bubble sort


    public static void BubbleSort(int[] arr) {
        boolean swapped;

        for (int i = 0; i < arr.length - 1; i++) {
            swapped = false;

            for (int j = 0; j < arr.length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {


                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;

                    swapped = true;

                }
            }

            if (!swapped) break;
        }
    }


    // get lowest

    public static int[] getLowestThree(int[] data) {

        if (data.length < 3) {
            throw new IllegalArgumentException("enter at least 3 numbers");
        }

        return new int[]{data[0], data[1], data[2]};
    }
}











