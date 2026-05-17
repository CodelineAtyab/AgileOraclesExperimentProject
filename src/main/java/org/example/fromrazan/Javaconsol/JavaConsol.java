package org.example.fromrazan.Javaconsol;


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
            int[] numbers = InputParser.parse(input);

            Sorter sorter = new Sorter();

            //choose algorithm

            if (algorithm.equals("bubble")) {
                sorter.BubbleSort(numbers);

            } else {
                sorter.SelecionSort(numbers);

            }

            //get lowest three
            int[] result = sorter.getLowestThree(numbers);


            //output
            System.out.println("result : ");
            for (int num : result) {
                System.out.println(num);

            }


        } catch (IllegalArgumentException e) {
            System.out.println("error: " + e.getMessage());
        }

    }

}











