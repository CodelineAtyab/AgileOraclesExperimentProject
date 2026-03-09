package org.example.fromtibyan.sprint3;

public class ClimbingCount {
    public static void main(String[] args){
        int row = 5;

        for (int i=2; i<row+2;i++){
            for( int j=1; j<i;j++){
                System.out.print(j+" " );
            }
            System.out.println("");
        }
    }
}
