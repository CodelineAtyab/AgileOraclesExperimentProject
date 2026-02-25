import java.util.Scanner;


public class Main {
    public static void main(String[] args) {

            Scanner scanner = new Scanner(System.in);
            boolean isRunning = true;

            while (isRunning){

                // Display Main Menu
                System.out.println("\n=====CLI ERP SYSTEM=====");
                System.out.println("1. Customer");
                System.out.println("2. Admin");
                System.out.println("3. Support Staff");
                System.out.println("4. Exit");

                //Check if input is a number
                if (!scanner.hasNext()){
                    System.out.println("Invalid input! Please enter a number between 1-4. ");
                    scanner.next();
                    continue;
                }
                int choice = scanner.nextInt();

                switch (choice){
                    case 1:
                        System.out.println("Customer module selected.");
                        break;

                    case 2:
                        System.out.println("Admin module selected.");
                        break;

                    case 3:
                        System.out.println("Support Staff module selected.");
                        break;

                    case 4:
                        System.out.println("Exiting system... Goodbye!");
                        isRunning = false;
                        break;

                    default:
                        System.out.println("Invalid option! Please choose between 1-4.");
                }
            }
            scanner.close();

        }
    }