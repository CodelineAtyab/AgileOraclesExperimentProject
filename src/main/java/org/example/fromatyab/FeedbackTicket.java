package org.example.fromatyab;

import java.util.UUID;

public class FeedbackTicket extends Ticket {
    int rating;

    @Override
    public String getId() {
        return String.valueOf(getInitial()) + "-" + UUID.randomUUID().toString();
    }

    private char getInitial() {return 'f';}
}
