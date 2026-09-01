package org.example.frommaryam.maryamSprint5.OOPmaze;

public class MazeRenderer {

    // only responsibility is drawing the maze
    public void render(Maze maze) {

        clearConsole();

        char[][] grid = maze.getGrid();

        // print maze
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[i].length; j++) {
                System.out.print(grid[i][j]);
            }
            System.out.println();
        }

        // animation delay
        try { Thread.sleep(1000); } catch (InterruptedException e) {}
    }

    // clears screen for animation effect
    private void clearConsole() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }
}
