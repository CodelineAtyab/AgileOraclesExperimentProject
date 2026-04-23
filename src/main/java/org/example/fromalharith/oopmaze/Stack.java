package org.example.fromalharith.oopmaze;

import java.util.ArrayList;
import java.util.List;


public class Stack {
    private final List<Position> data = new ArrayList<>();

    public void push(Position p) {
        data.add(p);
    }

    public Position pop() {
        if (isEmpty()) throw new RuntimeException("Stack empty");
        return data.remove(data.size() - 1);
    }

    public Position peek() {
        if (isEmpty()) throw new RuntimeException("Stack empty");
        return data.get(data.size() - 1);
    }

    public boolean isEmpty() {
        return data.isEmpty();
    }
}