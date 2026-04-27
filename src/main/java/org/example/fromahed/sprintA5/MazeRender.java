package org.example.fromahed.sprintA5;

public class MazeRender {
    // display maze
    public static void displayMaze(Maze maze) {
        char[][] grid = maze.getGrid();

        for (int rowMaze = 0; rowMaze < grid.length; rowMaze++) {
            for (int colMaze = 0; colMaze < grid[rowMaze].length; colMaze++) {
                System.out.printf("%c", grid[rowMaze][colMaze]);
            }
            System.out.println();
        }
        System.out.println();
    }
}


