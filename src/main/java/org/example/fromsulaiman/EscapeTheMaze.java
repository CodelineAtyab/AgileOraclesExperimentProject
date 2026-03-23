package org.example.fromsulaiman;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class EscapeTheMaze {
    public static void main(String[] args) {
        Path mazePath = null;
        char[][] maze;

        try {
            mazePath = Path.of(
                    EscapeTheMaze.class.getResource("./maze/maze.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\n");
            int lineLength = linesOfFile[0].length();

            maze = new char[linesOfFile.length][lineLength];

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();

                for (int col = 0; col < currRow.length; col++) {
                    maze[row][col] = currRow[col];
                    System.out.print(maze[row][col]);
                }
                System.out.println();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
