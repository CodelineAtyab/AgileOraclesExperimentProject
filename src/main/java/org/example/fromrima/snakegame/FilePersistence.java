package org.example.fromrima.snakegame;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class FilePersistence {
    static String filePath = "src/main/java/org/example/fromrima/snakegame/map.txt";

    public static void saveGame() {
        try (PrintWriter pw = new PrintWriter(new FileWriter(filePath))) {

            // saving score
            pw.println("SCORE " + GameMap.score);

            // save food position
            pw.println("FOOD " + "[" + GameMap.foodX + "," + GameMap.foodY + "]");

            // save snake position
            pw.print("SNAKE ");
            for (Position part : Snake.snake) {
                pw.print(part.toString() + " ");
            }

        } catch (IOException e) {
            System.out.println("Error saving game: " + e.getMessage());
        }
    }
}