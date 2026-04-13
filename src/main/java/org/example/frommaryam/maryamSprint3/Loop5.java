package org.example.frommaryam.maryamSprint3;
public class Loop5 {

//   Runs:
//     *
//    * *
//   *   *
//  *     *
// *********

    public static void main(String[] args) {

        int l=5; //Right
        int g=5; //Left

        for (int i=1; i<=5 ; i++){
            for (int  j=1 ; j<=9 ; j++){
                //When print (*)
                if(j == l || j == g || i==5){
                    System.out.print("*");
                }

                else {
                    System.out.print(" ");

                }
            }

            l=l-1;
            g=g+1;
            System.out.println(" "); //next line

        }
    }
}