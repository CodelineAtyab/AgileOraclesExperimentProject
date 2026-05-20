package org.example.fromalharithalkindi.s5.EscapeTheMazeOOP;

public class MazeRenderer {

    public static void render(char[][] display) {
        System.out.print("\033[H\033[2J");
        System.out.flush();

        for (char[] row : display) {
            for (char c : row) {
                System.out.print(c);
            }
            System.out.println();
        }
    }
}