package org.example.formabdulmajeed.MazeOOPEdition;

import java.util.Stack;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
    public class MazeSolver {

        // ---------------------------------------------------------------
        // Movement directions
        // ---------------------------------------------------------------
        // Each pair is {rowDelta, colDelta} for one direction:
        //   Up    → row decreases by 1
        //   Down  → row increases by 1
        //   Left  → column decreases by 1
        //   Right → column increases by 1
        private static final int[][] DIRECTIONS = {
                {-1,  0},   // Up
                { 1,  0},   // Down
                { 0, -1},   // Left
                { 0,  1}    // Right
        };

        private final Maze maze;      // The maze to solve
        private final MazeRenderer renderer;
        private final boolean[][] visited;
        private final Stack<Postion> stack;
        private List<Postion> solutionPath;
        private Postion exitFound;

        public MazeSolver(Maze maze, MazeRenderer renderer) {
            this.maze     = maze;
            this.renderer = renderer;
            this.stack    = new Stack<>();
            this.visited = new boolean[maze.getRows()][maze.getCols()];
        }
        public boolean solve() {
            // --- Initialise ---
            Postion start = maze.getStartPosition();

            // 1. Push the start onto the stack and mark it visited
            stack.push(start);
            visited[start.getRow()][start.getCol()] =true;

            int stepCount = 0;

            // --- Main loop ---
            // Keep going as long as there are positions left to explore
            while (!stack.isEmpty()) {

                // The current position is always the TOP of the stack
                Postion current = stack.peek();
                stepCount++;

                // --- Animate this frame ---
                String action = "Exploring " + current;
                renderer.render(maze, current, stepCount, action);

                // --- Check for exit ---
                if (maze.isExit(current.getRow(), current.getCol())) {
                    // We found it!  Build and store the path.
                    solutionPath = new ArrayList<>(stack);   // Copy the stack
                    // The stack is LIFO so index 0 is the EXIT and the last element is START.
                    // We reverse it so index 0 = START and last = EXIT.
                    java.util.Collections.reverse(solutionPath);
                    exitFound = current;
                    renderer.renderFinal(maze, current, stepCount);
                    return true;
                }

                // --- Try to move to an unvisited neighbour ---
                Postion next = findNextMove(current);

                if (next != null) {
                    // ── FORWARD MOVE ──────────────────────────────────────
                    // Mark the current cell as a breadcrumb on the grid
                    markVisited(current);

                    // Mark the neighbour as visited (prevents revisiting)
                    visited[next.getRow()][next.getCol()] = true;

                    // Push the neighbour onto the stack → it becomes current
                    stack.push(next);

                } else {
                    stack.pop();
                }
            }

            // Stack is empty → we explored everywhere reachable; no exit found.
            renderer.renderNoSolution(maze, maze.getStartPosition(), stepCount);
            return false;
        }

        public List<Postion> getSolutionPath() { return solutionPath; }

        public Postion getExitFound() { return exitFound; }

        private Postion findNextMove(Postion current) {
            for (int[] dir : DIRECTIONS) {
                int newRow = current.getRow() + dir[0];
                int newCol = current.getCol() + dir[1];

                if (maze.isValidMove(newRow, newCol) && !visited[newRow][newCol]) {
                    return new Postion(newRow, newCol);
                }
            }
            return null;   // Dead end
        }

        private void markVisited(Postion pos) {
            int r = pos.getRow();
            int c = pos.getCol();
            // Only overwrite open cells; leave '@' and 'E' intact
            if (maze.getCell(r, c) == Maze.OPEN || maze.getCell(r, c) == Maze.START) {
                // Direct grid mutation via reflection would break encapsulation.
                // Instead, Maze exposes a package-private setter used here.
                // (See setCell() in Maze.java)
                maze.setCell(r, c, Maze.VISITED);
            }
        }
    }

//    private static Stack<Postion> traking;
//    private boolean[][] visited;
//    private int row, col;
//    public boolean solve(MazeRunderer renderer){
//        //traking.push(new Postion(startRow,startCol));
//        visited [startRow][startCol]= true;
//        while (!traking.isEmpty()) {
//            Postion current  = traking.peek();
//            //showMaze(maze,traking);
//            Thread.sleep(1000);
//
//
//            if (maze[row][col]  == 'E'){
//                System.out.println("Exit found");
//                break;
//            }
//            row= current[0];
//            col= current[1];
//            boolean moved =false;
//            //move right
//            if (!moved && col+1< maze[0].length && !visited[row][col+1] && (maze[row][col+1]=='0'||maze[row][col+1]=='E')){
//                traking.push(new int[] {row,col+1});
//                visited[row][col+1]=true;
//                moved=true;
//            }
//            //move left
//            if (!moved && col-1 >=0 && !visited[row][col-1] && (maze[row][col-1]=='0' || maze[row][col-1]=='E')){
//                traking.push(new int[] {row,col-1});
//                visited[row][col-1]=true;
//                moved=true;
//            }
//            //move down
//            if (!moved && row+1<maze.length && !visited[row+1][col] && (maze[row+1][col]=='0'||maze[row+1][col]=='E')){
//                traking.push(new int[]{row+1,col});
//                visited[row+1][col]=true;
//                moved=true;
//            }
//            //move up
//            if (!moved && row-1>= 0 && !visited[row-1][col] && (maze[row-1][col]=='0'||maze[row-1][col]=='E')){
//                traking.push(new int[]{row-1,col});
//                visited[row-1][col]=true;
//                moved=true;
//            }
//
//            if (!moved)
//                traking.pop();
//        }
//    }
//
//    public void setVisited(boolean[][] visited) {
//        this.visited = visited;
//    }
//}
