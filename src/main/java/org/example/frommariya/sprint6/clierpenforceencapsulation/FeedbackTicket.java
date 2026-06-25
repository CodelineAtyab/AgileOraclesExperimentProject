package org.example.frommariya.sprint6.clierpenforceencapsulation;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id,String comment, int rating) {
        super(comment, id);

        //validate the ration (1-5)
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating between 1 and 5");
        }
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating between 1 and 5");
        }
        this.rating = rating;

    }
    @Override
    public String toString(){
        return
                String.format("[Feedback ] id: "+getId()+", comment="+getComment()+", rating="+getRating());
    }
}
