package org.example.fromrazan.sprint3;

public class Hollow {
    public static void main(String[] args){

        int rows = 5;

        for(int r = 1; r <= rows; r++){
           for (int i = r; i < rows; i++) {
               System.out.print(" ");
           }
                for(int n = 1; n <= (2 * r - 1); n++){
                    if ( n == 1 || n == (2 * r - 1)|| r == rows ){

                        System.out.print("*");

                    } else {
                        System.out.print(" ");
                      }

                    }
                        System.out.println();
                }
            }
        }


