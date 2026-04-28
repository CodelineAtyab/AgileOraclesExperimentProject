package org.example.formabdulmajeed.MneuOOP;

import java.util.ArrayList;

public class HomePage {
    private static ArrayList<Ticket> tickets = new ArrayList<>();
    public static void main(String[] args){
        System.out.println("the number of complines:"+ ComplainTicket.getnoOfTicket());

        ComplainTicket t1 = new ComplainTicket();
        ComplainTicket t2 = new ComplainTicket();
        FeedbackTicket f1 = new FeedbackTicket();

        System.out.println("---created ticket----");
        System.out.println(t1.toStringId() + " added");
        System.out.println(t2.toStringId() + " added");
        System.out.println(f1.toStringIdF() + " added");
        System.out.println("the number of complines:"+ ComplainTicket.getnoOfTicket());

        t1.setComment("Too laud");
        t1.setType("sound issue");
        System.out.println(t1.toString());

        t2.setComment("To mush heat");
        t2.setType("cooling issue");
        System.out.println(t2.toString());


        f1.setComment("Great app!");
        f1.setRating(5);
        System.out.println(f1.toString());

        tickets.add(t1);
        tickets.add(t2);
        tickets.add(f1);
    }
}
