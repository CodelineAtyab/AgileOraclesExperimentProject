package org.example.fromibrahim.OOP;

import java.io.FileNotFoundException;

public class MazeApp {

    public static void main(String[] args) {

        // Check if the user provided the maze file path in the command line
        if (args.length != 1) {
            System.out.println("Usage: java MazeApp <maze-file-path>");
            return; // Stop the program if input is missing
        }

        // Save the file path entered by the user
        String filePath = args[0];

        try {
            // Create an object from MazeLoader
            // This class is responsible for reading the maze file
            MazeLoader loader = new MazeLoader();

            // Load the maze from the file
            Maze maze = loader.load(filePath);

            // Print the original maze before solving
            System.out.println("Original Maze:");
            maze.printMaze();

            // Create an object from MazeSolver
            // This class is responsible for solving the maze
            MazeSolver solver = new MazeSolver();

            // Try to solve the maze
            boolean solved = solver.solve(maze);

            // Check if a path was found
            if (solved) {
                System.out.println("\nSolved Maze:");
                maze.printMaze();
            } else {
                System.out.println("\nNo path found in the maze.");
            }

        } catch (FileNotFoundException e) {
            // This error happens if the file path is wrong
            System.out.println("Error: Maze file not found.");
        } catch (RuntimeException e) {
            // This handles validation errors from MazeLoader
            System.out.println("Error: " + e.getMessage());
        }
    }
}
