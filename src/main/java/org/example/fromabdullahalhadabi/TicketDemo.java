package org.example.fromabdullahalhadabi;

import java.util.ArrayList;

public class TicketDemo {

    public static void main(String[] args) {
        System.out.println("Number of complaints before: " + ComplaintTicket.getNumberOfTickets());

        ArrayList<Ticket> tickets = new ArrayList<>();
        tickets.add(new ComplaintTicket("id1", "comment1", "type1"));
        tickets.add(new ComplaintTicket("id2", "comment2", "type2"));
        tickets.add(new FeedbackTicket("id3", "comment3", 4));

        System.out.println("Number of complaints after: " + ComplaintTicket.getNumberOfTickets());

        for (Ticket t : tickets) {
            System.out.println(t.toString());
        }
    }
}

abstract class Ticket {
    private String id;
    private String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

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
    private static int numberOfTickets = 0;

    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets++;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    @Override
    public String toString() {
        return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\", type=\"" + type + "\"";
    }
}

class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        setRating(rating);
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "[Feedback ] id=" + getId() + ", comment=\"" + getComment() + "\", rating=" + rating;
    }
}
