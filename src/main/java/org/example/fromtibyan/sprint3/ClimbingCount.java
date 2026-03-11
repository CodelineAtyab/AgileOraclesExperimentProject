package org.example.fromtibyan.sprint3;

import java.util.Scanner;

public class ClimbingCount {
    public static void main(String[] args){
        Scanner rowNumber = new Scanner (System.in);
        System.out.println("NUMBER PYRAMID");
        System.out.print("Enter the number of rows: ");
        int row = rowNumber.nextInt();

        for (int i=2; i<row+2;i++){
            for( int j=1; j<i;j++){
                System.out.print(j+"\t" );
            }
            System.out.println("");
        }
    }
}
