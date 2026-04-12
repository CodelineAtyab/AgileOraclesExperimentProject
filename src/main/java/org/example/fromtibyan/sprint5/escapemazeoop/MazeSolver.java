package org.example.fromtibyan.sprint5.escapemazeoop;

import java.util.ArrayList;
import java.util.Stack;

import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.*;

public class MazeSolver {
    static int r;
    static int c;

    public static Boolean SymbolMovement(ArrayList<String> mazeArray) {
        boolean[][] visitedCell = new boolean[mazeArray.size()][mazeArray.get(0).length()];
        Position start = new Position(startRow, startColumn);
        Stack<Position> mazeStack = new Stack<>();
        mazeStack.push(start);

        int endRow = 0;
        int endColumn = 0;
        for (int row = 0; row < mazeArray.size(); row++) {
            for (int column = 0; column < mazeArray.get(0).length(); column++) {
                if (Maze.isExit(row,column)) {
                    endRow = row;
                    endColumn = column;
                }
            }
        }

        while (!mazeStack.empty()) {
            Position current = mazeStack.pop(); // pop top variable for current position
            r = current.row;
            c = current.col;

            // move @ between the border & wall
            if (r < 0 || c < 0 || r >= mazeArray.size() || c >= mazeArray.get(0).length() || Maze.isWall(r,c) || visitedCell[r][c]) {
                continue;
            }
            visitedCell[r][c] = true; // to not visit again

            MazeRenderer.printMaze();
            Maze.storeMaze();

            mazeStack.push(new Position(r + 1, c));//down
            mazeStack.push(new Position(r - 1, c));//up
            mazeStack.push(new Position(r, c + 1));//right
            mazeStack.push(new Position(r, c - 1));//left

            MazeRenderer.symbolCoordinates();
            MazeRenderer.printPath();
            MazeRenderer.mazeDelay();

            if (r == endRow && c == endColumn) {
                System.out.println("Found an Exit at: " + "(" + r + "," + c + ")");
                return true;
            }
        }
        return false;
    }
}
