package org.example.fromalharith.oopmaze;

public class MazeRenderer {
    public void render(Maze maze, Position current) {

        // Clear console (works in most terminals)
        System.out.print("\033[H\033[2J");
        System.out.flush();

        for (int r = 0; r < maze.getRows(); r++) {
            for (int c = 0; c < maze.getCols(); c++) {

                if (current != null && r == current.getRow() && c == current.getCol()) {
                    System.out.print("@ ");
                } else {
                    System.out.print(maze.get(r, c) + " ");
                }
            }
            System.out.println();
        }
        System.out.println();
    }

    public void delay() {
        try {
            Thread.sleep(500);
        } catch (InterruptedException ignored) {}
    }
}