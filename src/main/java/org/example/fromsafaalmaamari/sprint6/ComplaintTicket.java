package org.example.fromsafaalmaamari.sprint6;

public class ComplaintTicket extends Ticket{
        private String type;
        private static int numberOfTickets = 0;

        public ComplaintTicket (String id, String comment, String type){
            super(id, comment);
            this.type = type;
            numberOfTickets++;
        }
        //get type
        public String getType(){
            return type;
        }
        //Set type
        public void setType(String type){
            this.type = type;
        }
        //Method to get number of Tickets
        public static int getNumberOfTickets(){
            return numberOfTickets;
        }

        public String toString(){
            return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", type=\"" + type + "\"";
        }
    }