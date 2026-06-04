package org.example.fromkhadija.sprint3;

public class StarHollowPyramid {
    public static void main(String[] args){

        int raws = 5;

        //Star_Mountain
        System.out.println("-----------------------Star Mountain---------------------------");
        //Space Loop
        for (int i = 1; i <= raws; i++){

            for (int j = i; j <= raws; j++){
                System.out.print(" ");
            }

            //First Star Loop
            for (int s1 = 1; s1 <= i; s1++){
                System.out.print("*");
            }

            //Second Star Loop
            for (int s2 = 2; s2 <= i; s2++){
                System.out.print("*");
            }

            System.out.println();
        }
        System.out.println("-----------------------Hollow Pyramid---------------------------");
        //Hollow Pyramid

        //Space Loop
        for (int r = 1; r <= raws; r++){

            for (int c = r; c <= raws; c++){
                System.out.print(" ");
            }

            //First Star Loop
            for (int s1 = 1; s1 <= r; s1++){

                if ( s1 == 1 || r == raws) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }

            //Second Star Loop
            for (int s2 = 2; s2 <= r; s2++){

                if (s2 == r || r == raws) {
                    System.out.print("*");
                } else{
                    System.out.print(" ");
                }
            }

            System.out.println();
        }

    }
}


