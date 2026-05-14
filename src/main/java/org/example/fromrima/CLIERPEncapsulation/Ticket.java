package org.example.fromrima.CLIERPEncapsulation;

public abstract class Ticket {
    private final String id;
    private final String comment;

    public Ticket(String id, String comment) {
        if (id == null || id.isBlank()) {
            throw new IllegalArgumentException("Invalid ID.");
        }
        if (comment == null || comment.isBlank()) {
            throw new IllegalArgumentException("Comment cannot be empty.");
        }
        this.id = id;
        this.comment = comment;
    }

    public String getId() {
        return id;
    }

    public String getComment() {
        return comment;
    }

    @Override
    public abstract String toString();
}
