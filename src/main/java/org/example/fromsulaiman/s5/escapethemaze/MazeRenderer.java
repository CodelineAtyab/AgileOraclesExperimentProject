package org.example.fromsulaiman.s5.escapethemaze;

public class MazeRenderer {

    public static void clear() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    public static void render(Maze maze) {
        char[][] grid = maze.getGrid();

        for (char[] row : grid) {
            for (char cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }

    public static void delay() throws InterruptedException {
        Thread.sleep(1000);
    }


}
