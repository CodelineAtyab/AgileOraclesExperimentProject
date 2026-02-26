package org.example.fromabdullahhosni;
import java.util.Scanner;

public class CilErp {
    public static void main(String[] args) {
//  Implemeting a scanner
        Scanner scannerBuffer = new Scanner(System.in);


//  Looping Menu
        boolean menuIsRunning = true;
        while (menuIsRunning==true){
//  Menu
            System.out.println("============ Wellcome - Main Menu =============");
            System.out.println("Please choose an option");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("*==================================*      ");
//  Input
            int IndexOption = Integer.parseInt(scannerBuffer.nextLine());


//  menu Options
//==========================================================================================================
            if (IndexOption==1){





            }
//==========================================================================================================
            else if (IndexOption==2){




            }
//==========================================================================================================
            else if (IndexOption==3){



            }

//==========================================================================================================
            else if (IndexOption==4){




            }
//==========================================================================================================
//  non existing input error handling
            else {
                System.out.println("non - existing menu options! try again.");
            }
        }

    }
}


