package org.example.fromabdullahhosni;

public class pyramidofNumbersLoopChallenge {
    public static void main(String[] args) {

        int numOfrows = 4;
//===============================================================
        System.out.println();
        System.out.println("Pyramid of Numbers: Loop Challenge");
        for (int i = 0 ; i <= numOfrows ; i++){
            for (int j = 1; j<= i; j++){
                System.out.print(j);

            }
            for (int c = i -1 ; c>= 1 ; c--){
                System.out.print(c);

            }
            System.out.println();
        }
    }
}

