package org.example.fromkhadija.sprint6b;

public class FeedbackTicket extends Ticket {

    private int rating;
    private static int numberOfFeedbackTicket = 0;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        this.rating = rating;

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must not >=5 and not <=1");
        }
    }
    public FeedbackTicket(String id) {
        super(id, "");
        numberOfFeedbackTicket++;
    }
    public int getRating() {
        return rating;
    }
    public void setRating(int rating) {
        this.rating = rating;

    }
    public static int getNumberOfFeedbackTicket() {
        return numberOfFeedbackTicket;
    }
    public void setNumberOfFeedbackTicket(int numberOfFeedbackTicket) {
        this.numberOfFeedbackTicket = numberOfFeedbackTicket;
    }
    @Override
    public String toString() {
        return "FeedbackTicket{" + "ID= " + getId() + "--> Added.";
    }
    public String getDetails() {
        return "[Complaint] ID= " + getId() + "Comment= " + "rating= " + rating;
    }
}
