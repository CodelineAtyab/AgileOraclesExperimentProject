package org.example.fromkhadija.sprint3;

public class PyramidNumbers {
    public static void main(String[] args){

        int lines = 4;

        for (int i = 1; i <= lines; i++) {
            //Increases Loop
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }
            //Decreases  Loop
            for (int r = i - 1; r >= 1; r--) {
                System.out.print(r);
            }
            System.out.println();
        }
    }
}
