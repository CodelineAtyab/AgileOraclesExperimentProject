package org.example.fromtibyan.sprint6.CLIERPOOP;


public class FeedbackTicket extends Ticket{
    private int rating;

    FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        if(rating > 5 || rating < 0){
            System.out.println("Rating must be 1-5");
        }else {
            this.rating = rating;
        }
    }
    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
