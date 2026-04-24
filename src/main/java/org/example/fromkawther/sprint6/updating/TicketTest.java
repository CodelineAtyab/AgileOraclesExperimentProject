package org.example.fromkawther.sprint6.updating;

public class TicketTest {
        public static void main(String[] args) {

            Ticket t1 = new Complaint("The internet is slow");
            Ticket t2 = new Feedback("Very helpful team");
            System.out.println("Complaint ID: " + t1.getId());
            System.out.println("Complaint Comment: " + t1.comment);

            System.out.println("------------------------------------------------------");

            System.out.println("Feedback ID: " + t2.getId());
            System.out.println("Feedback Comment: " + t2.comment);
        }
}

