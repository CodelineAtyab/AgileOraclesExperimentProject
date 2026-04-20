package org.example.fromtibyan.sprint6.snakegameoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

public class GameMap {
    char[][] mapArray2D;
    Path snakeFile = Path.of("map.txt");
        try {
        // read file
        ArrayList<String> mapArray = (ArrayList<String>) Files.readAllLines(snakeFile);
        for (int i = 0; i < mapArray.size(); i++) {
            mapArray.set(i, mapArray.get(i).replace(" ", "")); // remove the spaces
        }


        mapArray2D = new char[mapArray.size()][mapArray.get(0).length()];// convert to 2d array w/row and column length
        for (int i = 0; i < mapArray.size(); i++) {
            mapArray2D[i] = mapArray.get(i).toCharArray();// convert to char 2d array
        }
    } catch (
    IOException e) {
        System.err.println("ERROR READING FILE: " + e.getMessage()); // misreading the file
        throw new RuntimeException(e);// exception handling of reading file
    }
}
