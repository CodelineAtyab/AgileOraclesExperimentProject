package org.example.fromsulaiman.s5.escapethemaze;

import java.io.*;
import java.util.*;

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
                rows.add(line.replace(" ", "").toCharArray());
            }
        } finally {
            br.close();
        }

        int n = rows.size();
        char[][] grid = new char[n][n];

        for (int i = 0; i < n; i++) {
            grid[i] = rows.get(i);
        }

        return new Maze(grid);
    }
}
