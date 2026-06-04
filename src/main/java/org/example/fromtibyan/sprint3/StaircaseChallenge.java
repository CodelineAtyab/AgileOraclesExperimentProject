package org.example.fromtibyan.sprint3;

public class StaircaseChallenge {

    public static void main(String[] args){
        int row = 5;

        for (int i = 1; i<=row;i++){
            for (int j = 0; j < i;j++){
                System.out.print("#");
            }
            System.out.println("");
        }
    }

}
