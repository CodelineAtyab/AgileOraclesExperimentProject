package org.example.fromyarab.snakeGameOOPEdition;

import java.util.ArrayList;
import java.util.List;

public class Snake {
    private final List<Position> body;
    private final int maxRows;
    private final int maxColumns;

    public Snake(List<Position> initialBody, int maxRows, int maxColumns) {
        this.body = new ArrayList<>(initialBody);
        this.maxRows = maxRows;
        this.maxColumns = maxColumns;
    }

    public Snake(int maxRows, int maxColumns) {
        this.body = new ArrayList<>();
        this.maxRows = maxRows;
        this.maxColumns = maxColumns;
    }

    public Position getHead() {
        return body.isEmpty() ? null : body.get(body.size() - 1);
    }

    public Position getTail() {
        return body.isEmpty() ? null : body.get(0);
    }

    public List<Position> getBody() {
        return new ArrayList<>(body);
    }

    public int getLength() {
        return body.size();
    }

    public boolean contains(Position pos) {
        return body.contains(pos);
    }

    public boolean move(Direction direction) {
        Position newHead = calculateNewHead(direction);
        if (newHead == null || collidesWithBody(newHead)) {
            return false;
        }
        body.add(newHead);
        body.remove(0);
        return true;
    }

    public boolean move(Direction direction, int steps) {
        for (int i = 0; i < steps; i++) {
            if (!move(direction)) {
                return false;
            }
        }
        return true;
    }

    private Position calculateNewHead(Direction direction) {
        Position head = getHead();
        if (head == null) return null;

        int newRow = head.getRow() + direction.getRowDelta();
        int newCol = head.getColumn() + direction.getColumnDelta();

        newRow = (newRow % maxRows + maxRows) % maxRows;
        newCol = (newCol % maxColumns + maxColumns) % maxColumns;

        return new Position(newRow, newCol);
    }

    private boolean collidesWithBody(Position pos) {
        for (int i = 0; i < body.size() - 1; i++) {
            if (body.get(i).equals(pos)) {
                return true;
            }
        }
        return false;
    }

    public List<Direction> getValidDirections() {
        List<Direction> validDirs = new ArrayList<>();
        for (Direction dir : Direction.values()) {
            Position newHead = calculateNewHead(dir);
            if (newHead != null && !collidesWithBody(newHead)) {
                validDirs.add(dir);
            }
        }
        return validDirs;
    }

    public int getMaxStepsInDirection(Direction direction) {
        int steps = 0;
        Position currentHead = getHead();
        List<Position> visitedPositions = new ArrayList<>();

        if (currentHead == null || body.size() <= 1) {
            return 0;
        }

        while (visitedPositions.size() < body.size()) {
            int newRow = currentHead.getRow() + direction.getRowDelta();
            int newCol = currentHead.getColumn() + direction.getColumnDelta();

            newRow = (newRow % maxRows + maxRows) % maxRows;
            newCol = (newCol % maxColumns + maxColumns) % maxColumns;

            Position nextPos = new Position(newRow, newCol);

            if (visitedPositions.contains(nextPos)) {
                break;
            }

            for (int i = 0; i < body.size() - 1; i++) {
                if (body.get(i).equals(nextPos)) {
                    return steps;
                }
            }

            visitedPositions.add(currentHead);
            steps++;
            currentHead = nextPos;
        }
        return steps;
    }

    public void resetToCenter(int length) {
        body.clear();
        int centerRow = maxRows / 2;
        int startCol = (maxColumns - length) / 2;
        for (int i = 0; i < length; i++) {
            body.add(new Position(centerRow, startCol + i));
        }
    }

    public void resetToPositions(List<Position> positions) {
        body.clear();
        body.addAll(positions);
    }

    public void grow(Position pos) {
        body.add(0, pos);
    }
}