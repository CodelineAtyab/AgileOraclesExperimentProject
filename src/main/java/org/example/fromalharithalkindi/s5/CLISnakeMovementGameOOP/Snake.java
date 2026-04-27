package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;


import java.util.LinkedList;

public class Snake {

    private LinkedList<Position> body;

    public Snake(LinkedList<Position> body) {
        this.body = body;
    }

    // direction is now a plain String like "up", "down", etc.
    public boolean move(String direction, GameMap map) {

        Position head = body.getLast();
        Position newHead = head.move(direction);

        if (!map.isInside(newHead) || !map.isEmpty(newHead)) {
            return false;
        }

        Position tail = body.removeFirst();
        map.clearCell(tail);

        body.addLast(newHead);
        map.placeSnake(newHead);

        return true;
    }

    public String getAvailableDirections(GameMap map) {
        StringBuilder sb = new StringBuilder();

        String[] allDirections = Direction.values();

        for (int i = 0; i < allDirections.length; i++) {
            String d = allDirections[i];
            Position next = body.getLast().move(d);
            if (map.isInside(next) && map.isEmpty(next)) {
                sb.append(d).append(" ");
            }
        }

        return sb.toString().trim();
    }

    public LinkedList<Position> getBody() {
        return body;
    }
}