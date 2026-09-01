package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

public class GameRenderer {

    public static void render(GameMap map) {
        String[][] grid = map.getGrid();

        for (String[] row : grid) {
            for (String cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }
}
