package org.example.fromtibyan.sprint6.clierppolymorph;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args){
        ArrayList<Ticket> tickets= new ArrayList<>();

        Ticket t1 = new ComplaintTicket("C1","SLOW INTERNET","CONNECTION SPEED");
        Ticket t2 = new FeedbackTicket("F2","KEEP IT UP!!", 3);
        tickets.add(t1);
        tickets.add(t2);
        System.out.println(t1.getId());
        System.out.println(t2.getId());
    }
}