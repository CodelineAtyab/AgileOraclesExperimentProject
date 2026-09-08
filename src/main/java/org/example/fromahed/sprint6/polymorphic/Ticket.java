package org.example.fromahed.sprint6.polymorphic;

import java.time.LocalDateTime;

    public abstract class Ticket {

        private String comment;
        private LocalDateTime createdAt;

        public Ticket(String comment){
            this.comment = comment;
            this.createdAt = LocalDateTime.now();
        }

        public String getComment(){
            return comment;
        }

        public LocalDateTime getCreatedAt(){
            return createdAt;
        }

        //abstract method overridden
        public abstract String getId();

        @Override
        public String toString() {
            return "comment=\"" + comment + "\", createdAt=" + createdAt;
        }
    }


