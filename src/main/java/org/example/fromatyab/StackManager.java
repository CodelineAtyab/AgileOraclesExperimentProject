package org.example.fromatyab;

import java.util.Scanner;
import java.util.Stack;

public class StackManager {
    public static void main(String[] args) {
        Stack<String> ctrlZBuffer = new Stack<>();
        Scanner inpBuffer = new Scanner(System.in);

        // Scope
        {
            String userInput = inpBuffer.nextLine();
            while(!userInput.equals("exit")) {
                ctrlZBuffer.push(userInput);
                userInput = inpBuffer.nextLine();
            }
        }

        // Sleeping for 3 Seconds
        delay(3);

        // The User presses CTLR+Z
        for(int i=0; i<3; i++) {
            System.out.println("Pressed CTRL+Z!");
            delay(1);
            System.out.printf("%s\n\n", ctrlZBuffer.pop());
        }
    }

    public static void delay(long seconds) {
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
