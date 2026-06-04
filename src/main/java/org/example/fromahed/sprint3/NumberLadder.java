package org.example.fromahed.sprint3;

public class NumberLadder {
    public static void main(String [] args){
        //outer loop to prints rows
        for(int i=1; i<=5; i++){
            //inner loop to print numbers
            for(int j = 1; j <= i; j++){
                System.out.print(j + "\t");//using tab here to make spaces
            }
            System.out.println();
        }
    }
}
