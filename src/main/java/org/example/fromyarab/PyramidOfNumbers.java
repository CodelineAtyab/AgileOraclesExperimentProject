package org.example.fromyarab;

public class PyramidOfNumbers {
    public static void main(String[] args){
        int rows = 5;
        String print = "";

        for (int i=1 ; i<=rows ; i++){
            print = "1".repeat(i);
            System.out.println(Integer.parseInt(print) * Integer.parseInt(print));
        }
    }
}