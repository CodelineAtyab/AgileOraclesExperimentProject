package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.io.FileNotFoundException;

public class MazeApp {
    public static void main(String[] args) {

        if (args.length != 1) {
            System.out.println("Usage: java MazeApp <maze-file-path>");
            return;
        }

        String filePath = args[0];

        try {
            MazeLoader loader = new MazeLoader();
            Maze maze = loader.load(filePath);

            MazeRenderer renderer = new MazeRenderer();
            MazeSolver solver = new MazeSolver(maze, renderer);

            solver.solve();

        } catch (FileNotFoundException e) {
            System.out.println("Error: File not found -> " + e.getMessage());
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
