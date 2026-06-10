package org.example.fromalharithalkindi.s3;

public class S3NumberLadder {
    public static void main (String[] args) {

        for (int i = 1; i<=6; i++)
        {
            for(int j=1;j<i;j++)
            {
                System.out.print(j+"\t");
            }
            System.out.println("  ");


        }
    }
}
