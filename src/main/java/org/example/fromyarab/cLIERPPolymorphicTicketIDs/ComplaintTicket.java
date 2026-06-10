package org.example.fromyarab.cLIERPPolymorphicTicketIDs;

public class ComplaintTicket extends Ticket {
    private String severity;

    public ComplaintTicket(String description, String createdBy, String severity) {
        super(description, createdBy);
        this.severity = severity;
    }

    public String getSeverity() {
        return severity;
    }

    @Override
    public String getId() {
        return formatId("CMPT");
    }

    public String getTicketType() {
        return "Complaint";
    }
}