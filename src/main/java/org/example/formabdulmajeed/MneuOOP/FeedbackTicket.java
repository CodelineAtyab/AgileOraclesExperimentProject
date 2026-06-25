package org.example.formabdulmajeed.MneuOOP;

public class FeedbackTicket extends Ticket{
    int rating;
    private static int noOfFeedback = 0;

    public FeedbackTicket() {
        noOfFeedback++;
    }

    public int getNoOfFeedback(){ return noOfFeedback; }

    @Override
    public String setId() {
        return "FB-"+"00"+getNoOfFeedback();
    }

    @Override
    public String setComment(String comments) {
        return this.comment = comments;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        if (rating >= 1 && rating <= 5){
        this.rating = rating;
        }else System.out.println("Please rate form 1-5");
    }

    @Override
    public String toString() {
        return "[Feedback] " +
                "id='" + setId() + '\'' +
                ", comment='" + comment + '\'' +
                ", rating=" + rating;
    }

    public String toStringIdF() {
        return "FeedbackTicket " + setId();
    }
}
