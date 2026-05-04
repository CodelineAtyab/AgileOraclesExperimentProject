package org.example.fromkhadija.sprint5;

public class MazeRender {
    // Handles console drawing and animation
    public void render(Maze maze, Position current, boolean[][] visited, boolean[][] deadEnd) {
        //The maze grid
        char[][] grid = maze.getGrid();

        for (int r = 0; r < grid.length; r++) {
            for (int c = 0; c < grid[r].length; c++) {

                // Takes the current state of the maze:
                // current position of player @
                if (r == current.getRow() && c == current.getCol()) {
                    System.out.print("@ ");
                }
                // Wall
                else if (maze.isWall(r, c)) {
                    System.out.print("1 ");
                }
                // Invalid direction
                else if (deadEnd[r][c]) {
                    System.out.print("x ");
                }
                // Tracking the visited path
                else if (visited[r][c]) {
                    System.out.print("- ");
                }
                // This it means Open path 0 and Exit E  because it is inside the maze frame and not 1 or @
                else {
                    System.out.print(grid[r][c] + " ");
                }
            }
            System.out.println();
        }

        // spacing between frames
        System.out.println("\n\n====================================\n\n");

        //Pauses for 1 second between each frame
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}