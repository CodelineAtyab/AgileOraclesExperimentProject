package org.example.fromtibyan.sprint5.escapemazeoop;

import org.example.fromtibyan.sprint3.Position;

import java.util.ArrayList;
import java.util.Stack;

public class MazeSolver {
    public static Boolean SymbolMovement(ArrayList<String> mazeArray){
        boolean[][] visitedCell = new boolean[mazeArray.size()][mazeArray.get(0).length()];
        java.util.Stack<org.example.fromtibyan.sprint3.Position> mazeStack = new Stack<>();
        mazeStack.push(start);

        int endRow = 0;
        int endColumn = 0;
        for (int row = 0; row < mazeArray.size(); row++) {
            for (int column = 0; column < mazeArray.get(0).length(); column++) {
                if (mazeArray2D[row][column] == 'E') {
                    endRow = row;
                    endColumn = column;
                }
            }
        }

        while (!mazeStack.empty()) {
            org.example.fromtibyan.sprint3.Position current = mazeStack.pop(); // pop top variable for current position
            int r = current.row;
            int c = current.col;


            // move @ between the border & wall
            if (r < 0 || c < 0 || r >= mazeArray.size() || c >= mazeArray.get(0).length() || mazeArray2D[r][c] == '1' || visitedCell[r][c]) {
                continue;
            }
            visitedCell[r][c] = true; // to not visit again
            mazeArray2D[r][c] = '@';
            for (char[] maze : mazeArray2D) {
                System.out.println(maze);
            }

            for (int space = 0; space < 4; space++) {
                System.out.println();
            }

            mazeStack.push(new org.example.fromtibyan.sprint3.Position(r + 1, c));//down
            mazeStack.push(new org.example.fromtibyan.sprint3.Position(r - 1, c));//up
            mazeStack.push(new org.example.fromtibyan.sprint3.Position(r, c + 1));//right
            mazeStack.push(new Position(r, c - 1));//left
            mazeArray2D[r][c] = '0';
            if (r == endRow && c == endColumn) {
                return true;
            }
            Thread.sleep(1000);
        }
        return false;
    }
}
