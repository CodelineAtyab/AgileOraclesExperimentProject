package org.example.fromabdullahalhadabi;
import java.util.ArrayList;


public class TicketDemo{
    public static void main(String[] args) {
        ArrayList<Ticket> tickets = new ArrayList<>();

        // Show count BEFORE
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());


        System.out.println(" --- Creating tickets ---");

        ComplaintTicket ct1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        System.out.println("ComplaintTicket " + ct1.getId() + " added.");

        ComplaintTicket ct2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        System.out.println("ComplaintTicket " + ct2.getId() + " added.");

        FeedbackTicket ft1 = new FeedbackTicket("FB-001", "Great app!", 5);
        System.out.println("FeedbackTicket  " + ft1.getId() + " added.");

        tickets.add(ct1);
        tickets.add(ct2);
        tickets.add(ft1);

        // Show count AFTER static field incremented
        System.out.println(" Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println(" --- Ticket List ---");
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
        }
    }
}



// the father class
abstract class Ticket {
    private String id;
    private String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    // Getters and Setters for encapsulation
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public abstract String toString();
}

class ComplaintTicket extends Ticket {
    private String type;

    // Static field to track number of ComplaintTicket instances Static Fields
    private static int numberOfTickets = 0;


    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment); // Call parent constructor Inheritance
        this.type = type;
        numberOfTickets++;
    }
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    @Override
    public String toString() {
        return String.format("[Complaint] id=%s, comment=\"%s\", type=\"%s\"", getId(), getComment(), type);
    }
}

 class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5. Received: " + rating);
        }

        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5. Received: " + rating);
        }

        this.rating = rating;
    }

    @Override
    public String toString() {
        return String.format("[Feedback ] id=%s, comment=\"%s\", rating=%d", getId(), getComment(), rating);
    }
}





