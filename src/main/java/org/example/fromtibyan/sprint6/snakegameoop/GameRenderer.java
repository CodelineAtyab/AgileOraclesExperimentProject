package org.example.fromtibyan.sprint6.snakegameoop;

public class GameRenderer {
    public static void printMap() throws InterruptedException {
        for (char[] row : mapArray2D) {
            for (char space : row) {
                System.out.print(space + " ");
            }
            System.out.println();
        }
        for (int[] coord : snakeBody) {
            System.out.println(coord[0] + "," + coord[1]);
        }
        for (int space = 0; space < 7; space++) {
            System.out.println();
        }
        Thread.sleep(500);
    }
}
