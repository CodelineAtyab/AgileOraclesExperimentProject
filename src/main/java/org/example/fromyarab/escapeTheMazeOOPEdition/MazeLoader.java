package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class MazeLoader {

    public Maze load(String filePath) throws FileNotFoundException {
        ArrayList<ArrayList<String>> grid = new ArrayList<>();
        File mazeFile = new File(filePath);

        try (Scanner scan = new Scanner(mazeFile)) {
            while (scan.hasNextLine()) {
                ArrayList<String> line = new ArrayList<>(Arrays.asList(scan.nextLine().split("")));
                grid.add(line);
            }
        }

        return validate(grid);
    }

    private Maze validate(ArrayList<ArrayList<String>> grid) {
        int enPointCounter = 0;
        int exPointCounter = 0;
        Position startPos = null;
        Position exitPos = null;

        for (int i = 0; i < grid.size(); i++) {
            for (int j = 0; j < grid.get(i).size(); j++) {
                String cell = grid.get(i).get(j);

                // validate characters
                if (!cell.equals("1") && !cell.equals("0") && !cell.equals("@") && !cell.equals("E")) {
                    throw new IllegalArgumentException(
                            String.format("Maze Not Valid!! -> Characters restriction violation...(Character Position: <i>%d <j>%d)", i, j));
                }

                // check corners
                if ((i == 0 || i == grid.size() - 1) && (j == 0 || j == grid.get(i).size() - 1)
                        && (cell.equals("@") || cell.equals("E"))) {
                    throw new IllegalArgumentException(
                            String.format("Maze Not Valid!! -> Border restriction violation...(Corner Position: <i>%d <j>%d)", i, j));
                }

                // check borders
                if (i == 0 || j == 0 || i == grid.size() - 1 || j == grid.get(i).size() - 1) {
                    if (cell.equals("@")) {
                        enPointCounter++;
                        startPos = new Position(i, j);
                    } else if (cell.equals("E")) {
                        exPointCounter++;
                        exitPos = new Position(i, j);
                    } else if (!cell.equals("1")) {
                        throw new IllegalArgumentException(
                                String.format("Maze Not Valid!! -> Border restriction violation...(Border Position: <i>%d <j>%d)", i, j));
                    }
                }
            }
        }

        if (enPointCounter != 1 || exPointCounter != 1) {
            throw new IllegalArgumentException("Maze Not Valid!! -> # Entry/Exit point restriction violation...");
        }

        if (startPos.getRow() == exitPos.getRow() || startPos.getCol() == exitPos.getCol()) {
            throw new IllegalArgumentException("Maze Not Valid!! -> Entry/Exit point coordinate restriction violation...");
        }

        return new Maze(grid, startPos, exitPos);
    }
}