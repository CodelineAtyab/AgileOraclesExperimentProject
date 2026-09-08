package org.example.fromkhadija.sprint5;

public class MazeApp {

    public static void main(String[] args) {

        try {
            Maze maze = MazeLoader.load(args[0]);

            MazeRender renderer = new MazeRender();
            MazeSolver solver = new MazeSolver(maze, renderer);

            solver.solve(maze.findStart());

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
/*1. Reads the maze file path from the command-line argument (CLI).
  2. Loads the maze using MazeLoader.
  3. Creates the renderer (MazeRender) to display the maze.
  4. Creates the solver (MazeSolver) to solve the maze.
  5. Finds the starting position using maze.findStart().
  6. Starts the solving process.
  7. Handles try/ catch when something gose wrong*/
