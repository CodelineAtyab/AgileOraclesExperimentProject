package org.example.fromabdullahhosni;

public class NumberLadderTheClimbingCount {
    public static void main(String[] args) {

        int numOfrows = 5;
        //==============================================================
        System.out.println("Number Ladder: The Climbing Count");
        for (int i = 0 ;i <= numOfrows; i++){
            for (int j = 1; j<= i; j++){
                System.out.print(j);
                System.out.print("\t");
            }
            System.out.println();
        }

//===============================================================
    }
}
