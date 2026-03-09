package org.example.fromyarab;

public class PyramidOfNumbers {
    public static void main(String[] args){
        int rows = 5;
        for (int i=1 ; i<=rows ; i++){
            String print = "";
            for (int j=0 ; j<i ; j++){
                print += "1";
            }
            System.out.println(Integer.parseInt(print) * Integer.parseInt(print));
        }
    }
}