package org.example.fromkawther.sprint5.oopmaze;
import java.io.*;
import java.util.*;
    public class MazeLoader {
        public static Maze load(String filename) throws Exception {
            List<String> lines = new ArrayList<>();
            BufferedReader reader = new BufferedReader(new FileReader(filename));

            String line;
            while ((line = reader.readLine()) != null) {
                lines.add(line);
            }
            reader.close();

            int rows = lines.size();
            int cols = lines.get(0).length();
            char[][] grid = new char[rows][cols];

            for (int i = 0; i < rows; i++) {
                grid[i] = lines.get(i).toCharArray();
            }

            return new Maze(grid);
        }
    }
