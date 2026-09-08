package org.example.fromkhadija.sprint6;

import java.time.LocalDateTime;
import java.util.UUID;

public class ComplaintTicket extends Ticket {
    //Encapsulation
    private static final String prefixIdComplaint = "C- "; // static final because  it's constant never change

    public ComplaintTicket(String comment, LocalDateTime createdAt) {
        super(comment, createdAt);//(super) invoke the constructor of the parent class
        //this.comment = comment; -> i changed access modifier of comment and createdAt to private
        // this.createdAt = createdAt;
    }

    //overrides getId(): ComplaintTicket → prefix “C-”
    @Override
    public String getId() {

        return prefixIdComplaint + UUID.randomUUID().toString();
    }

    // here must use Override to implement the abstract method from supper class
    @Override
    public String toString() {
        return "Complain Ticket: {" + "comment='" + getComment() + '\'' + ", createdAt= " + getCreatedAt() + '}';
    }

}
