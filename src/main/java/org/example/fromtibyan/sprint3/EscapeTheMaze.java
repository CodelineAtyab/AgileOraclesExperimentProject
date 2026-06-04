package org.example.fromtibyan.sprint3;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;

public class EscapeTheMaze {
    public static void main(String[] args) throws IOException, InterruptedException {

        Path mazeFile = Path.of("src/main/java/org/example/fromtibyan/sprint3/maze.txt");
        try {
            ArrayList<String> mazeArray = (ArrayList<String>) Files.readAllLines(mazeFile);

            // convert to 2d array
            char[][] mazeArray2D = new char[mazeArray.size()][mazeArray.get(0).length()];
            for (int i = 0; i < mazeArray.size(); i++) {
                mazeArray2D[i] = mazeArray.get(i).toCharArray();
            }
            if (onlyOneSymbol(mazeArray2D, mazeArray) && allBordersOnes(mazeArray2D, mazeArray)) {
                int startRow = 0;
                int startColumn = 0;
                for (int row = 0; row < mazeArray.size(); row++) {
                    for (int column = 0; column < mazeArray.get(0).length(); column++) {
                        if (mazeArray2D[row][column] == '@') {
                            startRow = row;
                            startColumn = column;
                        }
                    }
                }
                Position start = new Position(startRow, startColumn);

                if (symbolMovement(mazeArray2D, start, mazeArray)) {
                    System.out.println("Maze Solved!");
                } else {
                    System.out.println("No path found.");
                }

            } else {
                System.out.println("Border conditions are not met.");
            }


        } catch (IOException e) {
            System.err.println("Error reading the maze file: " + e.getMessage()); // misreading the file
        }


    }

    public static boolean symbolMovement(char[][] mazeArray2D, Position start, ArrayList<String> mazeArray) throws InterruptedException {
        boolean[][] visitedCell = new boolean[mazeArray.size()][mazeArray.get(0).length()];
        Stack<Position> mazeStack = new Stack<>();
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
            Position current = mazeStack.pop(); // pop top variable for current position
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

            mazeStack.push(new Position(r + 1, c));//down
            mazeStack.push(new Position(r - 1, c));//up
            mazeStack.push(new Position(r, c + 1));//right
            mazeStack.push(new Position(r, c - 1));//left
            mazeArray2D[r][c] = '0';
            if (r == endRow && c == endColumn) {
                return true;
            }
            Thread.sleep(1000);
        }
        return false;
    }


    public static boolean onlyOneSymbol(char[][] mazeArray2D, ArrayList<String> mazeArray) {
        //checking if there is one @ and one E
        int atCounter = 0;
        int eCounter = 0;

        for (int row = 0; row < mazeArray.size(); row++) {
            for (int column = 0; column < mazeArray.get(0).length(); column++) {
                if (mazeArray2D[row][column] == '@') {
                    atCounter++;
                    if (atCounter > 1) {
                        return false;
                    }
                }
                if (mazeArray2D[row][column] == 'E') {
                    eCounter++;
                    if (eCounter > 1) {
                        return false;
                    }
                }
            }
        }
        return atCounter == 1 && eCounter == 1; // only when there is one symbol of each and not 0
    }

    public static boolean allBordersOnes(char[][] mazeArray2D, ArrayList<String> mazeArray) {
        // maze borders condition of all 1s
        int index ;
        for (index = 0; index < mazeArray.size(); index++) {
            char columnCellFirst = mazeArray2D[0][index];
            char columnCellLast = mazeArray2D[mazeArray.size()-1][index];
            char rowCellFirst = mazeArray2D[index][0];
            char rowCellLast = mazeArray2D[index][mazeArray.get(0).length()-1];
            if (!(columnCellFirst == '1' || columnCellFirst == '@' || columnCellFirst == 'E')) {
                return false;
            }
            if (!(columnCellLast == '1' || columnCellLast == '@' || columnCellLast == 'E')) {
                return false;
            }
            if (!(rowCellFirst == '1' || rowCellFirst == '@' || rowCellFirst == 'E')) {
                return false;
            }
            if (!(rowCellLast == '1' || rowCellLast == '@' || rowCellLast == 'E')) {
                return false;
            }
        }
        return true;
    }

}

