package org.example.fromrazan.Sprint6A;

abstract class Ticket {

    String idTicket;
    String comment;


    public Ticket(String idTicket , String comment){
        this.idTicket = idTicket;
        this.comment = comment;
    }

    public abstract String toString();
}
