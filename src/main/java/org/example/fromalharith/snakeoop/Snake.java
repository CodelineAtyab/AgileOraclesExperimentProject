package org.example.fromalharith.snakeoop;

import java.util.LinkedList;

public class Snake {
    private LinkedList<Position> body = new LinkedList<>();

    public void add(Position p) {
        body.add(p);
    }

    public Position head() {
        return body.getLast();
    }

    public Position neck() {
        return body.size() > 1 ? body.get(body.size()-2) : null;
    }

    public boolean reverse(Position next) {
        Position n = neck();
        return n != null && n.equals(next);
    }

    public boolean hitsItself(Position next) {
        for (Position p : body) {
            if (p.equals(next)) return true;
        }
        return false;
    }

    public void move(Position next) {
        body.add(next);
        body.removeFirst();
    }

    public LinkedList<Position> getBody() {
        return body;
    }
}