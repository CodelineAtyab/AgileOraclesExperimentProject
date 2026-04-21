package org.example.fromibrahim.OOP;

public class MazeRenderer {

    private final Maze maze;

    public MazeRenderer(Maze maze) {
        this.maze = maze;
    }

    // Prints the current state of the maze to the console.
    // Uses toDisplayGrid() so the renderer never touches the internal grid directly.
    public void draw() {
        System.out.println();
        char[][] displayGrid = maze.toDisplayGrid();
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getColumns(); col++) {
                System.out.print(displayGrid[row][col]);
            }
            System.out.println();
        }
    }

    // Pauses rendering for the given number of milliseconds to animate movement
    public void delay(int milliseconds) {
        //  Printing Delay
        try {
            Thread.sleep(milliseconds);
        } catch (InterruptedException e) {
            System.out.println("Movement stop !.");
        }
    }

    // Prints the final result message after solving is complete
    public void printResult(boolean found) {
        // The Maze Solved and Reach the Exit !
        if (found) {
            System.out.println("Maze Solved!");
            System.out.println("Path:");
        } else {
            System.out.println("No path found.");
        }
    }
}