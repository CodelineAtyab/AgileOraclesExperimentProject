package org.example.frommaryam.maryamSprint4;

//coding bat 1
//2 hours
//sprint 6
//array 2
//fizz array


public class Array2 {

    public static int[] fizzArray(int n) {

        int[] result = new int[n];

        for (int i = 0; i < n; i++) {
            result[i] = i;
        }

        return result;
    }

    // implementation
    public static void main(String[] args) {

        int n = 6; //to test-> change number

        int[] numbers = fizzArray(n);

        System.out.print("[ ");
        for (int i = 0; i < numbers.length; i++) {
            System.out.print(numbers[i] + " ");
        }
        System.out.print("]");
    }
}