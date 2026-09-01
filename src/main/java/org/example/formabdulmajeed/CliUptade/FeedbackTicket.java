package org.example.formabdulmajeed.CliUptade;

import java.util.UUID;

public class FeedbackTicket extends Ticket{
    private int rating;

    public FeedbackTicket(String commit, int rating) {
        super(commit);
        this.rating = rating;
    }
    private String buildPreFix(){
        return "F-"+ UUID.randomUUID().toString();
    }
    @Override
    public String getId() {
        return buildPreFix();
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
