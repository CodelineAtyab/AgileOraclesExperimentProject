package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

import java.io.PrintWriter;

public class FilePersistence {

    public static void save(GameMap map, String path) {

        try (PrintWriter writer = new PrintWriter(path)) {

            String[][] grid = map.getGrid();

            for (String[] row : grid) {
                for (int i = 0; i < row.length; i++) {
                    if (i > 0) writer.print(" ");
                    writer.print(row[i]);
                }
                writer.println();
            }

        } catch (Exception e) {
            System.out.println("Error saving file");
        }
    }
}
