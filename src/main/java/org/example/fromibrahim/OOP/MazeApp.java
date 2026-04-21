package org.example.fromibrahim.OOP;

public class MazeApp {

    public static void main(String[] arguments) {

        //  Validate CLI Argument
        String filePath = "src/main/java/org/example/fromibrahim/data/maze";

        //  1. Read File & Validation
        MazeLoader loader = new MazeLoader(filePath);
        Maze maze = loader.load();

        //  Stop if the maze could not be loaded or failed validation
        if (maze == null) {
            return;
        }

        // Set up renderer and solver
        MazeRenderer renderer = new MazeRenderer(maze);
        MazeSolver solver = new MazeSolver(maze, renderer);

        //  2. Solve the maze using stack-based backtracking
        boolean found = solver.solve();

        //  3. Print final result
        renderer.printResult(found);
    }
}