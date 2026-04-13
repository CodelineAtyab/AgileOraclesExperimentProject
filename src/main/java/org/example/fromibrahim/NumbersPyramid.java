package org.example.fromibrahim;

public class NumbersPyramid {
    public static void main(String[] args){

        int rows = 4;
        for (int i = 1 ; i <= rows ; i++){
            for (int j = 1 ; j <= i ; j++) {
                System.out.print(j);
            }
            for (int k = i-1 ; k >= 1 ; k--) {
                System.out.print(k);
            }
            System.out.println();
        }
    }
}
