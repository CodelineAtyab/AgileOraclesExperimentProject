package org.example.fromyarab.cLIERPPolymorphicTicketIDs;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String description, String createdBy, int rating) {
        super(description, createdBy);
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    @Override
    public String getId() {
        return formatId("FDBK");
    }

    public String getTicketType() {
        return "Feedback";
    }
}