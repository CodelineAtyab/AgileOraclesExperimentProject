package org.example.fromrazan.Sprint6B;

public class TicketTest {


    public static void main(String [] args){

     //polymorphism
        Ticket t1 = new ComplaintTicket("System is slow");
        Ticket t2 = new FeedbackTicket("Great service");


        //runtime behavior
        t1.printDetails();
        System.out.println("-------------------------");
        t2.printDetails();
    }

}
