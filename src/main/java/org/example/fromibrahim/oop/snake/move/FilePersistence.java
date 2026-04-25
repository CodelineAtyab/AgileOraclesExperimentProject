package org.example.fromibrahim.oop.snake.move;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

/*
 # Saves the updated map and snake order back to the map file
 # so the next run starts from the correct state.

 # Abstraction: callers just call saveMapToFile() — all file-writing details
                are hidden inside this class.

 # This class only handles file writing and it does not print,
               move the snake, or validate anything.
 */
public class FilePersistence {
    private final String filePath;

    public FilePersistence(String filePath) {
        this.filePath = filePath;
    }
    // Saves the current map grid and the snake order line to the file
    public void saveMapToFile(GameMap gameMap, Snake snake) throws IOException {
        BufferedWriter fileWrite = new BufferedWriter(new FileWriter(filePath));

        //  Write the map grid row by row
        char[][] mapCopy = gameMap.getMapCopy();
        for (int row = 0; row < gameMap.getRows(); row++) {
            for (int col = 0; col < gameMap.getColumns(); col++) {
                fileWrite.write(mapCopy[row][col] + " ");
            }
            fileWrite.newLine();
        }
        // After saving the map, write the updated snake order on an extra last line
        // This way, the next run will read the correct order from this line.
        fileWrite.write(buildSnakeOrderLine(snake));
        fileWrite.newLine();

        fileWrite.close();
    }

    // Builds the snake order string in the format: (row,col) (row,col) ...
    // This is saved to the file and also returned so the renderer can print it
    public String buildSnakeOrderLine(Snake snake) {
        StringBuilder snakeOrderBuilder = new StringBuilder();
        int size = snake.getSnakeBody().size();

        for (int i = 0; i < size; i++) {
            Position segment = snake.getSnakeBody().get(i);
            snakeOrderBuilder.append("(")
                    .append(segment.getRow())
                    .append(",")
                    .append(segment.getCol())
                    .append(")");
            // Add a space between points but not after the last one
            if (i < size - 1) {
                snakeOrderBuilder.append(" ");
            }
        }
        return snakeOrderBuilder.toString();
    }
}