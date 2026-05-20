package org.example.fromahed.sprint6.polymorphic;

import java.util.UUID;

    public class ComplainTicket extends Ticket {

        private static final String PREFIX = "Complain-";

        public ComplainTicket(String comment) {
            super(comment);
        }

        @Override
        public String getId() {
            return buildPrefixedId();
        }

        //private helper
        private String buildPrefixedId(){
            return PREFIX + UUID.randomUUID().toString();
        }
    }


