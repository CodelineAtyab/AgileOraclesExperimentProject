package org.example.fromrima.CLIERPPolymorphic;

public class FeedbackTicket extends Ticket{
    private static int counter = 1;
    private final int rating;
    private final String id;

    public FeedbackTicket(String comment, int rating) {
        super(comment);
        validateRating(rating);
        this.rating = rating;
        this.id = generateId();
    }
    @Override
    public String getId() {
        return id;
    }
    private void validateRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5.");
        }
    }
    private String generateId() {
        return String.format("FB-%03d", counter++);
    }
    @Override
    public String toString() {
        return "[Feedback ] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", rating=" + rating;
    }
}
