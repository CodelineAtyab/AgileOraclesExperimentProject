package org.example.fromkawther.sprint6.clierp;
public class Feedback extends Ticket {
    public int rating; //public
    public Feedback(String id, String comment, int rating) {
        super(id, comment);
        this.rating = rating;
    }
}
