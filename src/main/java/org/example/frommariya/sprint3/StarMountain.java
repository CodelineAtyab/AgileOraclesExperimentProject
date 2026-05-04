package org.example.frommariya.sprint3;

import java.util.Scanner;

public class StarMountain {
    public static void main(String[] args){
        Scanner sca = new Scanner(System.in);
        System.out.println("Enter Number of Rows: ");

        int numberOfRows = Integer.parseInt(sca.nextLine());

        int counterColumn = 1;
        for(int  currentRows = 0; currentRows<numberOfRows;currentRows=currentRows+1){
            for (int x = 0;x<((numberOfRows-1) - currentRows);x++){
                System.out.print(" ");
            }
            for (int x=0; x<counterColumn;x++){
                System.out.print("*");
            }
            counterColumn+=2;
            System.out.println();
        }
    }
}
