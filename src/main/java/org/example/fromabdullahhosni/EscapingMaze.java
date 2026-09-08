package org.example.fromabdullahhosni;



import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Stack;

public class EscapingMaze {
    public static void main(String[] args) {

        // ─────────────────────────────────────────────────
        // STEP 1 — LOAD & SHOW MAZE.TXT IN 2D ARRAY .
        // ─────────────────────────────────────────────────
        Path mazePath = null;
        char array2d[][] = null;

        try {
            mazePath = Path.of(EscapingMaze.class.getResource("./data/maze.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\n");
            int lineLength = linesOfFile[0].length();

            array2d = new char[linesOfFile.length][lineLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col = 0; col < currRow.length; col++) {
                    array2d[row][col] = currRow[col];
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        int rows = array2d.length;                                     // total rows of the maze
        int cols = array2d[0].length;

        for (int row = 0; row < 10; row++) {
            for (int col = 0; col < 10; col++) {
                System.out.printf("%c ", array2d[row][col]);
            }
            System.out.println();
        }


        // ─────────────────────────────────────────
        // STEP 2 — DECLARE START/END POSITION .
        // ─────────────────────────────────────────
        int startrow = 0;
        int startColumn = 0;    //start

        int exitRow = 0;
        int exitcolum = 0;      //exit


        for (int row = 0; row < array2d.length; row++) {
            for (int col = 0; col < array2d[row].length; col++) {
                if (array2d[row][col] == '@') {
                    startrow = row;                 // found start row
                    startColumn = col;                 // found start col
                }
                if (array2d[row][col] == 'E') {
                    exitRow = row;                  // found exit row
                    exitcolum = col;                  // found exit col
                }
            }
        }

        //handle error
        if (startrow == -1 || exitRow == -1) {
            System.out.println("Error: maze must have '@' and 'E'");
        }

        // ─────────────────────────────────────────
        // STEP 3 — DECLARE STACK AND ARRAYLIST
        // ─────────────────────────────────────────

        // Stack  for (push/pop each open '0')
        // each push or pop will be like {row, col}
        Stack<int[]> stack = new Stack<>();
        ArrayList<int[]> track = new ArrayList<>();

        // visited point: true, false
        boolean[][] visited = new boolean[rows][cols];

        // directions: Left, Right, Up, Down  (in that search order)
        int[] dRow = {0, 0, 1, -1};             // row directions
        int[] dCol = {1, -1, 0, 0};             // col directions

        // ─────────────────────────────────────────
        // STEP 4 — PUSH START AND UPDATE CURRENT POSITION
        // ─────────────────────────────────────────
        stack.push(new int[]{startrow, startColumn});  // push '@' position onto stack
        visited[startrow][startColumn] = true;          // mark start as visited
        track.add(new int[]{startrow, startColumn});    // record start in track log

        System.out.println("start solving\n");
        System.out.printf("maze - (%d,%d) current position\n",
                startColumn, startrow);                 // print as (x,y) → (col,row)

        boolean solved = false;

        // ─────────────────────────────────────────
        // STEP 5 — SEEK A PATH (STACK LOOP)
        // ─────────────────────────────────────────
        while (!stack.isEmpty()) {                       // keep going while paths remain
            int[] current = stack.pop();                 // pop top this is our current position
            startrow = current[0];                     // update current row
            startColumn = current[1];                     // update current col



            // check if we reached the exit 'E'
            if (startrow == exitRow && startColumn == exitcolum) {
                solved = true;                           // maze is solved!
                break;
            }

            // print the maze with '@' at the current position
            char previousChar = array2d[startrow][startColumn];   // save original char ('0')
            array2d[startrow][startColumn] = '@';                  // place '@' at current cell
            printMaze(array2d, rows, cols);                        // print the snapshot
            array2d[startrow][startColumn] = previousChar;         // restore original char
            delayTime(1);
            printspaces();

            // seek: try Left, Right, Up, Down from current position
            boolean foundNeighbour = false;

            for (int d = 0; d < 4; d++) {

                int nextRow = startrow + dRow[d];           // neighbour row
                int nextColumn = startColumn + dCol[d];           // neighbour col

                // move only if inside bounds AND open path '0' or exit 'E' AND not visited
                if (nextRow >= 0 && nextRow < rows &&
                        nextColumn >= 0 && nextColumn < cols &&
                        !visited[nextRow][nextColumn] &&
                        (array2d[nextRow][nextColumn] == '0' || array2d[nextRow][nextColumn] == 'E')) {

                    visited[nextRow][nextColumn] = true;              // mark neighbour as visited
                    stack.push(new int[]{nextRow, nextColumn});        // push neighbour onto stack
                    track.add(new int[]{nextRow, nextColumn});         // record this move in track log
                    foundNeighbour = true;

                    System.out.printf(" (%d,%d) current position\n",
                            nextColumn, nextRow);                     // print as (x,y)  (col,row)
                }
            }

            // if no neighbours found ,then dead end, backtrack via stack automatically
            if (!foundNeighbour && !stack.isEmpty()) {
                int[] backtrack = stack.peek();          // peek at where we backtrack to
                System.out.printf("dead end — backtracking to (%d,%d)\n",
                        backtrack[1], backtrack[0]);     // print backtrack position
            }
            printspaces();
            delayTime(3);
        }

        // ─────────────────────────────────────────
        // STEP 6 — PRINT RESULT
        // ─────────────────────────────────────────

        for (int[] cell : track) {
            int r = cell[0];
            int c = cell[1];
            if (array2d[r][c] != '@' && array2d[r][c] != 'E') {
                array2d[r][c] = 'X';
            }
        }

        if (solved) {
            System.out.println("=== Maze solved ===");
        } else {
            System.out.println("=== No path found ===");
        }

        printspaces();

        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                System.out.printf("%c ", array2d[row][col]);
            }
            System.out.println();
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

    public static void printspaces(){
        int spaces = 3;
        for (int spacePrint=0; spacePrint<spaces;spacePrint++){
            System.out.println();
        }
    }


    public static void delayTime(long seconds){
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

    }
}
