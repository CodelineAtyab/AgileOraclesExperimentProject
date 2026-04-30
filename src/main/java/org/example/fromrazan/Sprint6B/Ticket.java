package org.example.fromrazan.Sprint6B;

abstract class Ticket {

    protected String description;

    public Ticket (String description) {
        this.description = description;

    }

        public abstract String getId();



        public void printDetails(){
            System.out.println("Description: " + description);
            System.out.println("Ticket ID: " + getId());
        }
    }







