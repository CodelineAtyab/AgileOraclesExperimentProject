import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean running = true;

        while (running) {

            System.out.println("   Main Menu   ");
            System.out.println("Customer  ");
            System.out.println("Admin  ");
            System.out.println("Support Staff  ");
            System.out.println("Exit  ");
            System.out.print("Enter your choice  : ");


            String input = scanner.nextLine();
            scanner.nextLine();

            switch (input) {
                case "1":
                    System.out.println("select Customer : ");
                    break;
                case "2":
                    System.out.println("select Admin : ");
                    break;
                case "3":
                    System.out.println("select support staff  : ");
                    break;
                case "4":
                    System.out.println("Exit ");
                    break;
                default:
                    System.out.println("invalid option");
            }
            System.out.println();


        }
    }
}

}
