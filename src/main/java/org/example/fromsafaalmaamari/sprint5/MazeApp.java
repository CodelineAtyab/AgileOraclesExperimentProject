package org.example.fromsafaalmaamari.sprint5;
import java.nio.file.Path;
import java.nio.file.Files;

public class MazeApp {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.out.println("Please provide the maze file path!");
            return;
        }
        Path path = Path.of(args[0]);
        //check if the file is there
        if (!Files.exists(path)) {
            System.out.println("File not found!");
            return;
        }
        try {
            Maze maze = MazeLoader.loadFromFile(path);

            Position start = findStart(maze);

            MazeRenderer.render(maze);

            MazeSolver solver = new MazeSolver(maze);
            solver.solve(start);

        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    private static Position findStart(Maze maze) {
        for (int r = 0; r < maze.getRows(); r++) {
            for (int c = 0; c < maze.getCols(); c++) {
                if (maze.isStart(r, c)) {
                    return new Position(r, c);
                }
            }
        }
        throw new RuntimeException("Start not found!");
    }
}