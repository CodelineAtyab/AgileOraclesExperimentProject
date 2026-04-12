package org.example.fromabdullahhosni.oop.escpeMaze;

import java.util.ArrayList;
import java.util.Stack;

public class MazeSolver {

    // oop creating objects of classes
    MazeLoader maze = new MazeLoader();
    Position positions = new Position();

    public void solveMaze() {
        //oop import maze Array2d
        char[][] array2d = maze.loadMaze();;
        //error handling
        if (array2d == null) {
            System.out.println("Error: Maze could not be loaded.");
            return;
        }

        // oop import Start/exit Varriables
        int[] listOfPositions = positions.getStartExitPosition(array2d);
        //error handling
        if (listOfPositions.length < 4) {
            return;
        }
        int startrow = listOfPositions[0];
        int startColumn = listOfPositions[1];
        int exitRow = listOfPositions[2];
        int exitcolum = listOfPositions[3];


        // ─────────────────────────────────────────
        // STEP 3 — DECLARE STACK AND ARRAYLIST
        // ─────────────────────────────────────────

        // Stack  for (push/pop each open '0')
        // each push or pop will be like {row, col}
        Stack<int[]> stack = new Stack<>();
        ArrayList<int[]> track = new ArrayList<>();

        // visited point: true, false
        int rows = array2d.length;
        int cols = array2d[0].length;
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
    }



}
