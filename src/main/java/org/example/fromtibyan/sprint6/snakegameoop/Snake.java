package org.example.fromtibyan.sprint6.snakegameoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class Snake {
    ArrayList<int[]> snakeBody = new ArrayList<>();

    // Read snake positions from snakeCoordinates.txt to save previous snake coordinates
        try {
        List<String> coordinate = Files.readAllLines(Path.of("snakeCoordinates.txt"));
        for (String sCoordinate : coordinate) {
            sCoordinate = sCoordinate.trim();

            // Split by comma
            String[] parts = sCoordinate.split(",");
            int row = Integer.parseInt(parts[0]);
            int col = Integer.parseInt(parts[1]);

            snakeBody.add(new int[]{row, col});
        }
    } catch (
    IOException e) {
        System.err.println("ERROR READING FILE: " + e.getMessage()); // misreading the file
        throw new RuntimeException(e);// exception handling of file writing
    }
    foodForSnake(mapArray2D);
}
