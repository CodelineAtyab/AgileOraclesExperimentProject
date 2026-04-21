package org.example.fromibrahim.OOP;

/*
 * Entry point of the application.
 * Handles CLI arguments and coordinates the flow between all components.
 *
 * SRP:        this class only wires components together — no logic lives here.
 * Abstraction: each step (load, render, solve) is a single method call;
 *              implementation details are hidden inside each responsible class.
 */

public class MazeApp {

    public static void main(String[] arguments) {

        //  Validate CLI Argument
        String filePath = "src/main/java/org/example/fromibrahim/data/maze";

        //  Part.1 Read File & Validation
        MazeLoader loader = new MazeLoader(filePath);
        Maze maze = loader.load();

        //  Stop if the maze could not be loaded or failed validation
        if (maze == null) {
            return;
        }

        //  Part.2 Set up renderer and solver
        MazeRenderer renderer = new MazeRenderer(maze);
        MazeSolver solver = new MazeSolver(maze, renderer);

        //  Part.3 Solve the maze using stack-based backtracking
        boolean found = solver.solve();

        //  Print final result
        renderer.printResult(found);
    }
}