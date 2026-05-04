package org.example.fromkhadija.sprint6b;

import java.util.ArrayList;

public class MainTesting {

        public static void main(String[] args) {

            //print the ComplaintTicket counter before object creation
            System.out.printf("Complaint tickets so far: %s\n", ComplainTicket.getNumberOfTickets());
            System.out.printf("Feedback tickets so far: %s\n\n",FeedbackTicket.getNumberOfFeedbackTicket()+ "\n");
            System.out.println("--- Creating tickets --- ");

            Ticket c1 = new ComplainTicket("CT-001");
            Ticket c2 = new ComplainTicket("CT-002");
            Ticket c3 = new ComplainTicket("CT-003");
            Ticket f1 = new FeedbackTicket("FT-001");

            System.out.println(c1);
            System.out.println(c2);
            System.out.println(c3);
            System.out.println(f1);

            System.out.printf("\nComplaint tickets so far: %s\n",ComplainTicket.getNumberOfTickets());//calculate how many times call the constructor
            System.out.printf("Feedback tickets so far: %s\n\n",FeedbackTicket.getNumberOfFeedbackTicket()+ "\n");//calculate how many times call the constructor

            //Ticket ticket = new Ticket();// 'Ticket' is abstract; cannot be instantiated
            System.out.println("--- Ticket List ---");

            ArrayList<Ticket> tickets = new ArrayList<Ticket>();
            tickets.add(new ComplainTicket("CT-001", "Too loud ", "Noise"));
            tickets.add(new ComplainTicket("CT-002", "Too cold ", "Air-con"));
            tickets.add(new ComplainTicket("CT-003", "Too cold ", "Air-con"));
            tickets.add(new FeedbackTicket("FB-001", "Great app! ", 3));

            for( Ticket t : tickets ) {
                System.out.println(t.getDetails());
            }
        }
    }

