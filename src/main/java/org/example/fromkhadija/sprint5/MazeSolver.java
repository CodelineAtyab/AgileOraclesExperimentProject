package org.example.fromkhadija.sprint5;

import java.util.Stack;

public class MazeSolver {
    // Store Maze itself
    private final Maze maze;
    // Responsible for drawing the maze in the console.
    // Used to show the solving process step by step.
    private final MazeRender renderer;

    // This is the main path tracker.
    private final Stack<Position> stack = new Stack<>();

    //A 2D array that keeps track of visited cells. //true => already visited //false => not visited yet
    private final boolean[][] visited;
    //If a path does not work, it is marked as a dead end.
    private final boolean[][] deadEnd;

    //initialize the solver. Stores the maze (the map) //Stores the renderer (for drawing the maze)
    public MazeSolver(Maze maze, MazeRender renderer) {
        this.maze = maze;
        this.renderer = renderer;
        this.visited = new boolean[maze.getGrid().length][maze.getGrid()[0].length];
        this.deadEnd = new boolean[maze.getGrid().length][maze.getGrid()[0].length];
    }
    //Start position is added to the stack //Mark start as visited
    public void solve(Position start) {

        stack.push(start);
        visited[start.getRow()][start.getCol()] = true;

        //represent movement
        int[] dr = {-1, 1, 0, 0};
        int[] dc = {0, 0, -1, 1};

        //Keep solving until there is no path left.
        while (!stack.isEmpty()) {

            //Get current position without removing it.
            Position curr = stack.peek();

            //Show the current state of the maze in console.
            renderer.render(maze, curr, visited, deadEnd);

            // Maze is solved
            if (maze.isExit(curr.getRow(), curr.getCol())) {
                System.out.println("Maze Solved!");
                return;
            }

            boolean moved = false;

            for (int i = 0; i < 4; i++) {

                int nr = curr.getRow() + dr[i];
                int nc = curr.getCol() + dc[i];

                //Must be inside maze , Must not be visited
                if (maze.isValidMove(nr, nc) && !visited[nr][nc]) {

                    //Move forward , Mark as visited , Add to path
                    visited[nr][nc] = true;
                    stack.push(new Position(nr, nc));
                    moved = true;
                    break;
                }
            }

            //If no direction works: Mark as dead end , Go back one step
            if (!moved) {
                deadEnd[curr.getRow()][curr.getCol()] = true;
                stack.pop();
            }
        }

        System.out.println("No path found.");
    }
}
