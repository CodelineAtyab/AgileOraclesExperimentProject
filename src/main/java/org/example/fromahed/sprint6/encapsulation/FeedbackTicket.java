package org.example.fromahed.sprint6.encapsulation;

public class FeedbackTicket extends Ticket {

    private int rating;
    private static int feedbackCounter = 0;

    private static final String PREFIX = "FB-";
    private static final int MIN_RATING = 1;
    private static final int MAX_RATING = 5;

    public FeedbackTicket(String comment, int rating) {
        super("", comment);
        if (rating < MIN_RATING || rating > MAX_RATING) {
            throw new IllegalArgumentException("Rating must be between" + MIN_RATING + "&" + MAX_RATING);
        }
        this.rating = rating;
        feedbackCounter++;
        setId(generateId());
    }

    @Override
    public String generateId() {
        return String.format(PREFIX + "%03d", feedbackCounter);
    }

    public int getRating() {
        return rating;
    }

    @Override
    public String toString() {
        return "[Feedback]" + super.toString() + ",   rating=" + rating;
    }
}


