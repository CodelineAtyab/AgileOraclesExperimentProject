package org.example.formabdulmajeed;

public class NumberLadder {
    public static void main(String[] args){
        for (int rows = 0; rows <= 5; rows++) {
            for (int colums = 1; colums <= rows;colums++) {
                System.out.print(colums+"\t");
            } System.out.println();
        }
    }
}
