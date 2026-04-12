package org.example.fromtibyan.sprint5.escapemazeoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;


public class MazeLoader {
    static int startRow;
    static int startColumn;
    static char[][] mazeArray2D;
    static ArrayList<String> mazeArray;
    static String filePath = "src/main/java/org/example/fromtibyan/sprint5/escapemazeoop/maze.txt";

    public static void readMaze() {
        try {
            Path mazeFile = Path.of(filePath);
            mazeArray = (ArrayList<String>) Files.readAllLines(mazeFile);
            mazeArray2D = new char[mazeArray.size()][mazeArray.get(0).length()];// convert to 2d array
            for (int i = 0; i < mazeArray.size(); i++) {
                mazeArray2D[i] = mazeArray.get(i).toCharArray();
            }
            if (onlyOneSymbol() && allBordersOnes()) {

                for (int row = 0; row < mazeArray.size(); row++) {
                    for (int column = 0; column < mazeArray.get(0).length(); column++) {
                        if (Maze.isSymbol(row, column)) {
                            startRow = row;
                            startColumn = column;
                        }
                    }
                }

                if (MazeSolver.SymbolMovement(mazeArray)) {
                    System.out.println("Maze Solved!");
                } else {
                    System.out.println("No path found.");
                }
            } else {
                System.out.println("Border conditions are not met/ there should be 1 @ symbol & 1 E .");
            }
        } catch (IOException e) {
            System.err.println("Error reading the maze file: " + e.getMessage()); // misreading the file
        }
    }
    //checking if there is one @ and one E
    public static boolean onlyOneSymbol() {
        int atCounter = 0;
        int eCounter = 0;

        for (int row = 0; row < mazeArray.size(); row++) {
            for (int column = 0; column < mazeArray.get(0).length(); column++) {
                if (Maze.isSymbol(row, column)) {
                    atCounter++;
                    if (atCounter > 1) {
                        return false;
                    }
                }
                if (Maze.isExit(row, column)) {
                    eCounter++;
                    if (eCounter > 1) {
                        return false;
                    }
                }
            }
        }
        return atCounter == 1 && eCounter == 1; // only when there is one symbol of each and not 0
    }
    // maze borders condition of all 1s
    public static boolean allBordersOnes() {
        int index;
        for (index = 0; index < mazeArray.size(); index++) {
            if (!(Maze.isWall(0, index) || Maze.isSymbol(0, index) || Maze.isExit(0, index))) {
                return false;
            }
            if (!(Maze.isWall(mazeArray.size() - 1, index) || Maze.isSymbol(mazeArray.size() - 1, index) || Maze.isExit(mazeArray.size() - 1, index))) {
                return false;
            }
            if (!(Maze.isWall(index, 0) || Maze.isSymbol(index, 0) || Maze.isExit(index, 0))) {
                return false;
            }
            if (!(Maze.isWall(index, mazeArray.size() - 1) || Maze.isSymbol(index, mazeArray.size() - 1) || Maze.isExit(index, mazeArray.size() - 1))) {
                return false;
            }
        }
        return true;
    }
}