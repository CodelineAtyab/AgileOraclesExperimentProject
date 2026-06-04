package org.example.fromsulaiman.s5.escapethemaze;

public class MazeApp {

    public static void main(String[] args) {

        if (args.length == 0) {
            System.out.println("Usage: pass the maze file path, for example:");
            System.out.println("  java -cp target/classes org.example.fromsulaiman.s5.escapethemaze.MazeApp maze.txt");
            return;
        }

        Maze maze;

        try {
            maze = MazeLoader.load(args[0]);
        } catch (Exception e) {
            System.out.println("Error loading maze: " + e.getMessage());
            return;
        }

        Position start = findStart(maze);
        if (start == null) {
            System.out.println("Error: start '@' not found (file should have been validated).");
            return;
        }

        MazeSolver solver = new MazeSolver(maze);

        try {
            boolean solved = solver.solve(start);

            if (solved) {
                System.out.println("Maze Solved!");

                Stack<Position> path = solver.getPath();

                System.out.print("Path: ");
                for (int i = 0; i < path.size(); i++) {
                    System.out.print(path.get(i));
                    if (i < path.size() - 1) {
                        System.out.print(" → ");
                    }
                }

                Position end = path.peek();
                System.out.println();
                System.out.println("Found an Exit at: " + end);

            } else {
                System.out.println("No path found.");
            }
        } catch (InterruptedException e) {
            System.out.println("Execution interrupted.");
        }
    }

    private static Position findStart(Maze maze) {
        for (int i = 0; i < maze.getSize(); i++) {
            for (int j = 0; j < maze.getSize(); j++) {
                if (maze.getCell(i, j) == '@') {
                    return new Position(i, j);
                }
            }
        }
        return null;
    }
}
