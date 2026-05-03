package org.example.fromrima.sprintthree;

public class HollowPyramid {
    public static void main(String[] args){
        int lines=5;
        for(int row=1;row<=lines;row++){
            for(int col=row;col<lines;col++){
                System.out.print(" ");
            }
            for(int stars=1;stars<=(2*row-1);stars++){
                if(stars==1 || stars==2*row-1 || row==lines) {
                    System.out.print("*");
                }
                else{
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}
