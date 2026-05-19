package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

public class GameRenderer {
    public void render(GameMap gameMap) {
        char[][] grid = gameMap.getGrid();

        for (int row = 0; row < grid.length; row++) {
            for (int col = 0; col < grid[row].length; col++) {
                System.out.print(grid[row][col] + " ");

            }
            System.out.println();
        }
    }
}
