package org.example.fromahed.sprint6.polymorphic;

public class Main {

        public static void main(String[] args){
            //parent reference child object
            Ticket t1 = new ComplainTicket("Too loud");
            Ticket t2 = new FeedbackTicket("Great app!", 5);

            //polymorphism
            //print id num that reference to ticket
            System.out.println(t1.getId());
            System.out.println(t2.getId()+"\n");

            System.out.println(t1);
            System.out.println(t2);
        }
    }


