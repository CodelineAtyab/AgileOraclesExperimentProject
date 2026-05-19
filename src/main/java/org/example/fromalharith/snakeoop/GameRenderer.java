package org.example.fromalharith.snakeoop;

public class GameRenderer {

    public static void print(GameMap map) {
        for (char[] row : map.getGrid()) {
            for (char c : row) {
                System.out.print(c + " ");
            }
            System.out.println();
        }
    }
}