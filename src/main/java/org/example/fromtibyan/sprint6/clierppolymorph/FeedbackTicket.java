package org.example.fromtibyan.sprint6.clierppolymorph;


import java.util.UUID;

public class FeedbackTicket extends Ticket {
    private int rating;

    FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        if(rating > 5 || rating < 0){
            System.out.println("Rating must be 1-5");
        }else {
            this.rating = rating;
        }
    }

    private String buildPrefixedId(){
        return "F-";
    }
    @Override
    public String getId(){
            return buildPrefixedId() + UUID.randomUUID();
    }
    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
