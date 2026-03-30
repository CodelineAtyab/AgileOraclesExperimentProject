package org.example.fromrima.sprintthree;

public class PyramidNumbers {
    public static void main (String[] args){
        int lines=4;
        for(int row=1;row<=lines;row++){
            for(int increasingNumber=1;increasingNumber<=row;increasingNumber++){
                System.out.print(increasingNumber);
            }
            for(int decreasingNumber=row-1;decreasingNumber>=1;decreasingNumber--){
                System.out.print(decreasingNumber);
            }
            System.out.println();
        }

    }
}
