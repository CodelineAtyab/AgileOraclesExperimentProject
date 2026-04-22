package org.example.fromalharith.oopmaze;


public class MazeApp {

    public static void main(String[] args) {

        try {
            String path = (args.length > 0)
                    ? args[0]
                    : "src/main/java/org/example/fromalharith/oopmaze/MazeMap";

            MazeLoader loader = new MazeLoader();
            Maze maze = loader.load(path);

            MazeRenderer renderer = new MazeRenderer();

            // Show original maze first
            renderer.render(maze, null);
            renderer.delay();

            MazeSolver solver = new MazeSolver(maze);
            boolean solved = solver.solve(renderer);

            if (!solved) {
                System.out.println("No path found.");
            }

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}