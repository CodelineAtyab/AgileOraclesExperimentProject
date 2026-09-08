package org.example.fromsafaalmaamari.sprint6;

public class Ticket {
        private String id;
        private String comment;

        //constructor
        public Ticket(String id, String comment){
            this.id = id;
            this.comment = comment;
        }
        //get id
        public String getId(){
            return id;
        }
        //Set id
        public void setId(String id){
            this.id = id;
        }
        //Get comment
        public String getComment(){
            return comment;
        }
        //Set comment
        public void setComment(String comment){
            this.comment = comment;
        }
    }