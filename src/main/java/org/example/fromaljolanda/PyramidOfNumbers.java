import java.util.Scanner;

public class PyramidOfNumbers {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a Number: ");
        int userChoice = input.nextInt();

        for (int i = 1; i <= userChoice; i++) {
            // Ascending order
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }

            // Descending order + no repeat last number
            for (int j = i - 1; j >= 1; j--) {
                System.out.print(j);
            }

            System.out.println();
        }
    }
}
