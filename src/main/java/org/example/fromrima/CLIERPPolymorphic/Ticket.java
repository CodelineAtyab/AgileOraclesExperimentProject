package org.example.fromrima.CLIERPPolymorphic;

public abstract class Ticket {
    private final String comment;
    public Ticket(String comment) {
        validateComment(comment);
        this.comment = comment;
    }
    public String getComment() {
        return comment;
    }
    public abstract String getId();
    private void validateComment(String comment) {
        if (comment == null || comment.isBlank()) {
            throw new IllegalArgumentException("Comment cannot be empty.");
        }
    }
    @Override
    public String toString() {
        return getId() + " -> " + comment;
    }
}