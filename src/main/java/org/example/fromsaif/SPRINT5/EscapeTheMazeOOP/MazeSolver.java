package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

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
}