package org.example.fromalharith;

import java.util.Scanner;

public class Main {
    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        boolean name = true;

        do {

            int menu1 = scanner.nextInt();
            int menu = menu1;

            switch (menu) {
                case 1:
                    System.out.println("1. Customer");
                    break;

                case 2:
                    System.out.println("2. Admin");
                    break;

                case 3:
                    System.out.println("3. Support Staff");
                    break;

                case 4:
                    System.out.println("4. Exit");
                    name = false;
                    break;

            }
        }

        while (name) ;
        scanner.close();

    }
}
