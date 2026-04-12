package org.example.fromtibyan.sprint5.escapemazeoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

public class MazeLoader {
static int startRow;
static int startColumn;
static char[][] mazeArray2D;
static  ArrayList<String> mazeArray;
static String filePath = "src/main/java/org/example/fromtibyan/sprint5/escapemazeoop/maze.txt";

    public static void readMaze() {
        try {
            Path mazeFile = Path.of(filePath);
            mazeArray = (ArrayList<String>) Files.readAllLines(mazeFile);
            // convert to 2d array
            mazeArray2D = new char[mazeArray.size()][mazeArray.get(0).length()];
            for (int i = 0; i < mazeArray.size(); i++) {
                mazeArray2D[i] = mazeArray.get(i).toCharArray();
            }
            if (onlyOneSymbol(mazeArray2D, mazeArray) && allBordersOnes(mazeArray2D, mazeArray)) {

                for (int row = 0; row < mazeArray.size(); row++) {
                    for (int column = 0; column < mazeArray.get(0).length(); column++) {
                        if (mazeArray2D[row][column] == '@') {
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