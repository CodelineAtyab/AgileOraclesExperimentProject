package org.example.fromahed.sprint6.polymorphic;

import java.util.UUID;

    public class FeedbackTicket extends Ticket {

        private static final String PREFIX = "Feedback-";
        private int rating;


        public FeedbackTicket(String comment, int rating) {
            super(comment);
            if (rating < 1 || rating > 5) {
                throw new IllegalArgumentException("Rating must be between 1 and 5 ");
            }
            this.rating = rating;
        }

        @Override
        public String getId () {
            return buildPrefixedId();
        }

        public int getRating () {
            return rating;
        }

        //private helper
        private String buildPrefixedId () {
            return PREFIX + UUID.randomUUID();
        }

        @Override
        public String toString () {
            return "[Feedback]" + super.toString() + ", rating = " + rating;
        }
    }


