package org.example.fromsafaalmaamari.sprint6;

public class FeedbackTicket extends Ticket {
        private int rating;

        public FeedbackTicket(String id, String comment, int rating) {
            super(id, comment);
            setRating(rating);
        }

        public int getRating() {
            return rating;
        }

        public void setRating(int rating) {
            if (rating >= 1 && rating <= 5) {
                this.rating = rating;
            } else {
                System.out.println("Error invalid value rating values must be between (1-5)");
            }
        }

        public String toString() {
            return "[Feedback] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", rating=" + rating;
        }
    }