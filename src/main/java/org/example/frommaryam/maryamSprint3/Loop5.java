package org.example.frommaryam.maryamSprint3;

public class Loop5 {
    public static void main(String[] args) {

        //right
        int r=5;

        //left
        int l=5;

        for (int i=1; i<=5 ; i++){
            for (int  j=1 ; j<=9 ; j++){
                if(j == r || j == l || i==5){
                    System.out.print("*");
                }

                else {
                    System.out.print(" ");

                    }
            }

            r=r-1;
            l=l+1;
            System.out.println(" ");

        }
    }
}
