package org.example.fromalharith.cliencapsulation;

public class ticketDemo {
    public static void main(String[] args) {

        Complaint c1 = new Complaint("Application works clear", "Ali", 5);
        Feedback f1;
        f1 = new Feedback("Nice application", "Sara", 4) {
            @Override
            public String setId() {
                return "";
            }

            @Override
            public String setComment(String comments) {
                return "";
            }
        };

        // Complaint
        c1.display();
        c1.handle();

        System.out.println("-----------");

        // Feedback
        f1.display();
        f1.handle();
    }
}