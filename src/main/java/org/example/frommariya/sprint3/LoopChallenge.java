package org.example.frommariya.sprint3;

import java.util.Scanner;

public class LoopChallenge {
    public static void main(String[] args){
        Scanner sca = new Scanner(System.in);

        System.out.println("Enter Num of rows: ");

        int numRows = sca.nextInt();

        for (int c=1; c<=numRows; c++){
            for (int x=1;x<=c;x++){
                System.out.print(x);
            }
            for (int x=c-1;x>=1;x--){
                System.out.print(x);
            }
            System.out.println();
        }
    }
}
