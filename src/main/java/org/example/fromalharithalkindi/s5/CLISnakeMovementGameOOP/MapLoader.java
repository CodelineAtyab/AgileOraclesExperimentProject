package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class MapLoader {

    public static GameMap load(String path) {
        ArrayList<String[]> rows = new ArrayList<>();

        try (Scanner sc = new Scanner(new File(path))) {
            while (sc.hasNextLine()) {
                String line = sc.nextLine().trim();
                if (!line.isEmpty()) {
                    rows.add(line.split(" "));
                }
            }
        } catch (Exception e) {
            System.out.println("Error loading map");
            System.exit(0);
        }

        if (rows.size() < 15 || rows.get(0).length < 15) {
            System.out.println("Map must be at least 15x15");
            System.exit(0);
        }

        String[][] grid = new String[rows.size()][rows.get(0).length];

        for (int i = 0; i < rows.size(); i++) {
            grid[i] = rows.get(i);
        }

        return new GameMap(grid);
    }
}