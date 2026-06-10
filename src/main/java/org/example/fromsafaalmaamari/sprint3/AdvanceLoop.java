package org.example.fromsafaalmaamari.sprint3;

public class AdvanceLoop {
    public static void main(String[] args){
        int n = 5;
        for (int i = 1; i <= n; i++){
            for (int s = i; s <= n; s++) {
                System.out.print(" ");
            }
            for ( int j = 1;  j <= 2 * n - 1; j++){
                if (j == 1 || j == 2 * i - 1 || i == n) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}

