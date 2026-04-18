package org.example.fromsafaalmaamari.sprint5;
import java.nio.file.Path;

public class MazeApp {
    public static void main(String[] args) throws Exception {

        Path path;

        if (args.length > 0) {
            path = Path.of(args[0]);
        } else {
            path = Path.of("m.txt");
        }

        Maze maze = MazeLoader.loadFromFile(path);

        Position start = findStart(maze);

        MazeRenderer.render(maze);

        MazeSolver solver = new MazeSolver(maze);
        solver.solve(start);
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