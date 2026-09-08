package org.example.frommaryam.maryamSprint3;

public class Loop4 {
    public static void main(String[] args){


        //how it goes?
        //
        // 1                                      (c1)
        // 121 (1+120)                            (c1 +i2)
        // 12321 (121 +12200)                     (c1 +i2)
        // 1234321 (12321 + 1222000)              (c3 +i4)
        //logic: add one 2 & one 0 every time


        //Changes every time
        //i2 = i1 *100 +m2
        //m2= m1 *10
        //c2 = c1 +i2


        int c = 1; //c1
        int i = 1; //i1

        for (int k = 1; k <= 4; k++) {
            if (k == 1) {
                c = 1;
            }

            else {
                int m = 2; //m1
                for (int j = 2; j < k; j++) {
                    m = m * 10;
                }

                i = i * 100 + (m * 10);
                c = c + i;
            }

            System.out.println(c);
        }
    }

}