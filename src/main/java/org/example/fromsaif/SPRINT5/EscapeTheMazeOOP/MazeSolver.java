package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

import org.example.fromsaif.SPRINT5.EscapeTheMaze;

import java.util.Stack;

public class MazeSolver {
    private Maze maze;
    private MazeRenderer renderer;
    private boolean[][] visited;
    private Stack<Position> stack;

    public MazeSolver(Maze maze, MazeRenderer renderer) {
        this.maze = maze;
        this.renderer = renderer;
        this.visited = new boolean[maze.getRows()][maze.getCols()];
        this.stack = new Stack<>();
    }

    public boolean solve() {
        return false;
    }

    private Position findStart(){
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {
                Position position = new Position (row, col);

                if (maze.getCell(position) == '@') {
                    return position;
                }
            }
        }
        throw new IllegalArgumentException("Maze must contain '@' as the starting point.");
    }
}
