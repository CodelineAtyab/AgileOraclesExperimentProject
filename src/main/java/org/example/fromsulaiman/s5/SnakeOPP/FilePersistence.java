package org.example.fromsulaiman.s5.SnakeOPP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class FilePersistence {
    public void save(Path mapPath, GameMap gameMap) throws IOException {
        List<String> lines = new ArrayList<>();
        char[][] grid = gameMap.getGrid();

        for (char[] row : grid) {
            StringBuilder builder = new StringBuilder();
            for (int col = 0; col < row.length; col++) {
                builder.append(row[col]);
                if (col < row.length - 1) {
                    builder.append(' ');
                }
            }
            lines.add(builder.toString());
        }

        Files.write(mapPath, lines);
    }
}
