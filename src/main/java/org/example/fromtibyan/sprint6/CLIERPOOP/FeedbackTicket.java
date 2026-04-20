package org.example.fromtibyan.sprint6.CLIERPOOP;

import java.util.ArrayList;

public class FeedbackTicket extends Ticket{
    private int rating;

    FeedbackTicket(String id, String comment) {
        super(id, comment);
        if(rating > 5 || rating < 0){
            System.out.println("Rating must be 1-5");
        }
    }



}
