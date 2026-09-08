package org.example.fromsafa.sprint6b;
public class Main {

    public static void main(String[] args) {

        Ticket t1 = new ComplaintTicket("Internet is slow");
        Ticket t2 = new FeedbackTicket("The app is useful");

        System.out.println(t1.getId());
        System.out.println(t2.getId());

        System.out.println(t1.getComment());
        System.out.println(t2.getComment());
    }
}
