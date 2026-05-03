package org.example.formabdulmajeed;

public class PyramidOfNumbers {
    public static void main(String[] args) {
        for (int rows = 1; rows <= 4;rows++){
            for (int colums = 1; colums <= rows;colums++) {
                System.out.print(colums);
            }
            for(int decrasing = rows-1; decrasing >= 1;decrasing--){
            System.out.print(decrasing);
        }
            System.out.println();
        }

    }
}