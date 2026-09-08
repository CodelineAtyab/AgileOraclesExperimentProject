package org.example.fromsulaiman.s5.escapethemaze;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MazeLoader {

    public static Maze load(String filePath) throws IOException {
        InputStream is = MazeLoader.class.getResourceAsStream(filePath);
        BufferedReader br;

        if (is != null) {
            br = new BufferedReader(new InputStreamReader(is));
        } else {
            File file = new File(filePath);
            if (!file.exists()) {
                throw new IOException("File not found: " + filePath);
            }
            br = new BufferedReader(new FileReader(file));
        }

        List<char[]> rows = new ArrayList<>();
        String line;
        try {
            while ((line = br.readLine()) != null) {
                String trimmed = line.replace(" ", "");
                if (!trimmed.isEmpty()) {
                    rows.add(trimmed.toCharArray());
                }
            }
        } finally {
            br.close();
        }

        int n = rows.size();
        if (n == 0) {
            throw new IOException("Maze file has no maze lines.");
        }

        char[][] grid = new char[n][n];
        for (int i = 0; i < n; i++) {
            char[] row = rows.get(i);
            if (row.length != n) {
                throw new IOException("Maze must be n x n: row " + i + " has " + row.length + " cells, need " + n + ".");
            }
            grid[i] = Arrays.copyOf(row, n);
        }

        MazeValidator.validate(grid);
        return new Maze(grid);
    }
}
