package org.example.fromsulaiman.s5.SnakeOPP;

public enum Direction {
    UP(-1, 0),
    DOWN(1, 0),
    LEFT(0, -1),
    RIGHT(0, 1);

    private final int rowDelta;
    private final int colDelta;

    Direction(int rowDelta, int colDelta) {
        this.rowDelta = rowDelta;
        this.colDelta = colDelta;
    }

    public int getRowDelta() {
        return rowDelta;
    }

    public int getColDelta() {
        return colDelta;
    }

    public static Direction fromString(String value) {
        if (value == null) {
            return null;
        }

        return switch (value.trim().toLowerCase()) {
            case "up" -> UP;
            case "down" -> DOWN;
            case "left" -> LEFT;
            case "right" -> RIGHT;
            default -> null;
        };
    }
}
