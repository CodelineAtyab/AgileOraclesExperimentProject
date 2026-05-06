package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

public class FeedbackTicket extends Ticket {

    // Stores the feedback rating
    private int rating;


    // Constructor passes the feedback comment to parent ticket class
    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        setRating(rating);
    }



    @Override
    public String getId() {
        return buildPrefix() + UUID.randomUUID(). toString();
    }

    private String buildPrefix() {
        return "F-";
    }
}
