package org.example.fromibrahim.OOP;

public class MazeRenderer {

    public void printMaze(Maze maze) {

        // Get the 2D grid (maze structure) from the Maze object
        char[][] grid = maze.getGrid();

        // Print an empty line before the maze
        System.out.println();

        // Loop through each row in the grid
        for (int row = 0; row < grid.length; row++) {

            // Loop through each column in the current row
            for (int col = 0; col < grid[row].length; col++) {

                // Print each character (cell) without moving to a new line
                System.out.print(grid[row][col]);
            }

            // After finishing one row, move to the next line
            System.out.println();
        }
    }

    // This method is used to pause the program (for animation)
    public void pause() {

        try {
            // Pause the program for 1000 milliseconds (1 second)
            Thread.sleep(1000);

        } catch (InterruptedException e) {

            // This block runs if the sleep is interrupted (rare case)
            System.out.println("Movement stop!!!!");
        }
    }
}
