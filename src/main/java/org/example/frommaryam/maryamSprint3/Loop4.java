package org.example.frommaryam.maryamSprint3;

public class Loop4 {
        public static void main(String[] args){

            //Changes every time
            //m2= m1 *10
            //i2 = i1 *100 +m2
            //c2 = c1 +i2


            int c = 0;
            int i = 1;

            for (int k = 1; k <= 4; k++) {
                if (k == 1) {
                    c = 1;
                }

                else {
                    int m = 2;
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
