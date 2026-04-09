package org.example.fromsafaalmaamari.sprint3;

public class StarMountin {
    public static void main(String[] args) {

        for (int i = 1; i <= 5; i++) {
            for (int s = 4; s >= i - 1; s--){
                System.out.print(" ");
            }
            for (int j = 1; j <= 2 * i -1; j++){
                System.out.print("*");
            }
            System.out.println();


        }
    }
}
