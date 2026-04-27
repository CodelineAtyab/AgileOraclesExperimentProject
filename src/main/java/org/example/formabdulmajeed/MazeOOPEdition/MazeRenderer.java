package org.example.formabdulmajeed.MazeOOPEdition;

public class MazeRenderer {
    private final int frameDelayMs;

    /**
     * @param frameDelayMs  Pause duration in milliseconds between each frame.
     */
    public MazeRenderer(int frameDelayMs) {
        this.frameDelayMs = frameDelayMs;
    }

    public void render(Maze maze, Postion current, int step, String action) {
        printSeparator();
        printStatus(step, action);
        printGrid(maze, current);
        pause();
    }

    public void renderFinal(Maze maze, Postion exit, int step) {
        printSeparator();
        printStatus(step, "*** EXIT FOUND! ***");
        printGrid(maze, exit);
    }

    public void renderNoSolution(Maze maze, Postion last, int step) {
        printSeparator();
        printStatus(step, "*** NO PATH FOUND ***");
        printGrid(maze, last);
    }

    private void printSeparator() {
        System.out.println("--------------------------------------------------");
    }

    /**
     * Prints the step number and the action that just happened.
     *
     * Output example:
     *   Step 7  |  PUSH (3,4)
     */
    private void printStatus(int step, String action) {
        System.out.println("Step " + step + "  |  " + action);
        System.out.println();   // blank line before the grid
    }

    /**
     * Prints the maze grid, one character per cell.
     *
     * What each character means:
     *   @  →  player's current position
     *   #  →  wall (was '1' in the file)
     *   E  →  exit
     *   .  →  visited cell (breadcrumb trail left behind)
     *      →  open unvisited cell (printed as a blank space)
     *
     * Each cell is followed by one space so the grid is readable.
     *
     * Example output:
     *
     *   # # # # # # #
     *   # @           # # #
     *   # . # # # # #
     *   # . . . . . #
     *   # # # . # # #
     *   # # # . . E #
     *   # # # # # # #
     */
    private void printGrid(Maze maze, Postion current) {
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {

                // Player is always drawn on top of the underlying cell
                if (row == current.getRow() && col == current.getCol()) {
                    System.out.print("@ ");
                    continue;
                }

                char cell = maze.getCell(row, col);

                if (cell == Maze.WALL) {
                    System.out.print("1 ");   // wall

                } else if (cell == Maze.EXIT) {
                    System.out.print("E ");   // exit

                } else if (cell == Maze.VISITED || cell == Maze.START) {
                    System.out.print("- ");   // visited / start after player left

                } else {
                     // Maze.OPEN — unvisited open path
                    System.out.print("0 ");   // two spaces = open cell
                }
            }
            System.out.println();   // end of this row
        }
        System.out.println();       // blank line after the grid
    }

    /**
     * Sleeps for frameDelayMs milliseconds.
     * This is what creates the step-by-step animation effect.
     */
    private void pause() {
        try {
            Thread.sleep(frameDelayMs);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
//    public void render(char[][] maze) {
//        for (int r = 0; r < maze.length; r++) {
//            for (int c = 0; c < maze[r].length; c++) {
//                    System.out.print(maze[r][c] + " ");
//            }
//            System.out.println();
//        }
//        System.out.println();
//    }
//    public void renderDelay(char[][] maze) {
//        render(maze);
//        try {
//            Thread.sleep(500);
//        } catch (InterruptedException e) {
//            //e.printStackTrace();
//        }
//    }

