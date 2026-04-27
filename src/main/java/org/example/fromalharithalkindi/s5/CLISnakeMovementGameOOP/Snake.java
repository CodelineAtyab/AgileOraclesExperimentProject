package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

import java.util.LinkedList;
import java.util.List;

public class Snake {

    private LinkedList<Position> body = new LinkedList<>();

    public Snake(LinkedList<Position> body) {
        this.body = body;
    }

    public boolean move(Direction direction, GameMap map) {

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
        for (Direction d : Direction.values()) {
            Position next = body.getLast().move(d);
            if (map.isInside(next) && map.isEmpty(next)) {
                sb.append(d.name().toLowerCase()).append(" ");
            }
        }
        return sb.toString().trim();
    }

    public LinkedList<Position> getBody() {
        return body;
    }
}
