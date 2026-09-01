package org.example.fromsafaalmaamari.sprint6.updateclierp;

import java.util.UUID;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        setRating(rating);
    }

    public int getRating() {

        return rating;
    }

    public void setRating(int rating) {
        if (rating >= 1 && rating <= 5) {
            this.rating = rating;
        } else {
            throw new IllegalArgumentException("Error invalid value rating values must be between (1-5)");
        }
    }

    private String buildPrefixedId(){
        return "F-" + UUID.randomUUID().toString();
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }
}
