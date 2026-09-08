package org.example.fromabdullahhosni.oop.escpeMaze;

public class MazeRender {
    public static void main(String[] args) {

        // Load the maze
        MazeLoader.loadMaze();
        char[][] array2d = MazeLoader.getArray2d();
        // oop attributes
        int rows = array2d.length;
        int cols = array2d[0].length;

        boolean solved;

        if (array2d == null) {
            System.out.println("Error: Failed to load maze.");
            return;
        }

//        // Find start '@' and exit 'E'
//        Position position = new Position();     // oop object
//        int[] positions = position.getStartExitPosition();
//
//        if (positions.length < 4) {
//            System.out.println("Error: Could not find start '@' or exit 'E' in maze.");
//            return;
//        }

        // Scan that array for '@' and 'E'
        Position.getStartExitPosition();

        // Solve the maze
        System.out.println("=================== Looking in the MAZE ===================");
        MazeSolver newGame = new MazeSolver();
        newGame.startMaze();
        newGame.solveMaze();        //object elemnt
        solved = newGame.isMazeSolved();        //object elemnt

        printMaze(array2d, rows, cols);    //external method
        delayTime(0);       //extrenal method


        if (solved == true) {
            System.out.println("\n===========================================");
            System.out.printf("MAZE IS SOLVED!\n an exit is founded: (%d,%d)\n", Position.getExitRow(), Position.getExitcolum());
//            System.out.println(newGame.getTrackedPath().toString());

            System.out.print("Path taken: ");
            for (int[] positions : newGame.getTrackedPath()) {
                System.out.printf("[%d,%d] ", positions[0], positions[1]);
            }
            System.out.println();

        }
        if (!solved) {
            System.out.println("+++++++++++++ Maze is OVER ++++++++++++++");
            System.out.println("\t\t\t No path has been found.");
        }
    }

    // ────────────────────────────────────────────────────────────────
    //  EXTERNAL FUNCTIONS — time delay - making spaces - printing maze
    // ────────────────────────────────────────────────────────────────
    public static void printMaze(char[][] maze, int rows, int cols) {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                System.out.printf("%c ", maze[row][col]);
            }
            System.out.println();
        }
    }

    public static void printspaces() {
        int spaces = 3;
        for (int spacePrint = 0; spacePrint < spaces; spacePrint++) {
            System.out.println();
        }
    }

    public static void delayTime(long seconds) {
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}


