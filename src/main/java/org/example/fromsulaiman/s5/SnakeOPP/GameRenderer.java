package org.example.fromsulaiman.s5.SnakeOPP;

public class GameRenderer {
    public void render(GameMap gameMap) {
        char[][] grid = gameMap.getGrid();
        for (char[] row : grid) {
            StringBuilder builder = new StringBuilder();
            for (int col = 0; col < row.length; col++) {
                builder.append(row[col]);
                if (col < row.length - 1) {
                    builder.append(' ');
                }
            }
            System.out.println(builder);
        }
    }
}
