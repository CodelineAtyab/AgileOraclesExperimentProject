package org.example.fromrazan.Sprint6A;

class Feedback extends Ticket {


    private static int count = 0;
    private int rating;



    public Feedback(String comment , int rating){
        super("FB-" + (++count), comment);


        if(rating < 1 || rating > 5 ){
            throw new IllegalArgumentException("raring must be 1-5");
        }

        this.rating = rating;

        System.out.println("FeedbackTicket" + idTicket+ "added");

    }
    public String toString(){
        return "[Feedback ] id=" + idTicket + ", comment=\"" + comment + "\", rating=" + rating;
    }


}
