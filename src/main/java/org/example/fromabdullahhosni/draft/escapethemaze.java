package org.example.fromabdullahhosni.draft;


import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Stack;

public class escapethemaze {
    public static void main(String[] args) {
        Path mazePath = null;
        char maze[][] = null;

        try {
            mazePath = Path.of(escapethemaze.class.getResource("../data/maze.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\n");
            int lineLength = linesOfFile[0].length();

            maze = new char[linesOfFile.length][lineLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col = 0; col < currRow.length; col++) {
                    maze[row][col] = currRow[col];
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        for (int row = 0; row < 10; row++) {
            for (int col = 0; col < 10; col++) {
                System.out.printf("%c ", maze[row][col]);
            }
            System.out.println();
        }

        int rows = maze.length;                                     // total rows of the maze
        int cols = maze[0].length;

        // Declarning starting && exit positions .
        // pointer position.
        // each position will have the and (row,column) coordnates.
        int startrow = 0;
        int startColumn = 0;    //start

        int exitRow = 0;
        int exitcolum = 0;      //exit


        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    startrow = row;                 // found start row
                    startColumn = col;                 // found start col
                }
                if (maze[row][col] == 'E') {
                    exitRow = row;                  // found exit row
                    exitcolum = col;                  // found exit col
                }
            }
        }


        if (startrow == -1 || exitRow == -1) {
            System.out.println("Error: maze must have '@' and 'E'");
            return;
        }


        // ─────────────────────────────────────────
        // STEP 3 — DECLARE STACK AND ARRAYLIST
        // ─────────────────────────────────────────

        // Stack  → holds open paths to explore (push/pop each open '0')
        // each entry is int[]{row, col}
        Stack<int[]> stack = new Stack<>();

        // ArrayList → records every move made (the journey/track log)
        ArrayList<int[]> track = new ArrayList<>();

        // visited[][] → marks cells already pushed so we don't revisit them
        // we keep this as a plain 2D boolean array (not a collection)
        boolean[][] visited = new boolean[rows][cols];

        // directions: Left, Right, Up, Down  (in that search order)
        int[] dRow = {0, 0, 1, -1};             // row offsets
        int[] dCol = {1, -1, 0, 0};             // col offsets


        // ─────────────────────────────────────────
        // STEP 4 — PUSH START AND UPDATE CURRENT POSITION
        // ─────────────────────────────────────────

        stack.push(new int[]{startrow, startColumn});  // push '@' position onto stack
        visited[startrow][startColumn] = true;          // mark start as visited
        track.add(new int[]{startrow, startColumn});    // record start in track log

        System.out.printf("start - push (%d,%d) and update current position\n",
                startColumn, startrow);                 // print as (x,y) → (col,row)

        boolean solved = false;                          // did we reach 'E'?


        // ─────────────────────────────────────────
        // STEP 5 — SEEK A PATH (STACK LOOP)
        // ─────────────────────────────────────────

        while (!stack.isEmpty()) {                       // keep going while paths remain

            int[] current = stack.pop();                 // pop top → this is our current position
            startrow = current[0];                     // update current row
            startColumn = current[1];                     // update current col



            // check if we reached the exit 'E'
            if (startrow == exitRow && startColumn == exitcolum) {
                solved = true;                           // maze is solved!
                break;
            }

            // print the maze with '@' at the current position
            char previousChar = maze[startrow][startColumn];   // save original char ('0')
            maze[startrow][startColumn] = '@';                  // place '@' at current cell
            printMaze(maze, rows, cols);                        // print the snapshot
            maze[startrow][startColumn] = previousChar;         // restore original char
            delayTime(1);
            printspaces();

            // seek: try Left, Right, Up, Down from current position
            boolean foundNeighbour = false;

            for (int d = 0; d < 4; d++) {

                int nr = startrow + dRow[d];           // neighbour row
                int nc = startColumn + dCol[d];           // neighbour col

                // move only if inside bounds AND open path '0' or exit 'E' AND not visited
                if (nr >= 0 && nr < rows &&
                        nc >= 0 && nc < cols &&
                        !visited[nr][nc] &&
                        (maze[nr][nc] == '0' || maze[nr][nc] == 'E')) {

                    visited[nr][nc] = true;              // mark neighbour as visited
                    stack.push(new int[]{nr, nc});        // push neighbour onto stack
                    track.add(new int[]{nr, nc});         // record this move in track log
                    foundNeighbour = true;

                    System.out.printf("push (%d,%d) and update current position\n",
                            nc, nr);                     // print as (x,y) → (col,row)
                }
            }

            // if no neighbours found → dead end, backtrack via stack automatically
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
            if (maze[r][c] != '@' && maze[r][c] != 'E') {
                maze[r][c] = 'X';
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
                System.out.printf("%c ", maze[row][col]);
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
