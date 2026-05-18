package org.example.fromahed.sprint6.encapsulation;

public class ComplainTicket extends Ticket {

    private String type;
    private static int numberOfTicket = 0;

    private static final String PREFIX = "CT-";

    public ComplainTicket(String comment, String type) {
        super("", comment);
        this.type = type;
        numberOfTicket++;
        setId(generateId());
    }

    @Override
    public String generateId() {
        return String.format(PREFIX + "%03d", getNumberOfTicket());
    }

    public String getType() {
        return type;
    }

    public static int getNumberOfTicket() {
        return numberOfTicket;
    }

    @Override
    public String toString() {
        return "[Complaint]" + super.toString() + ",     type=\"" + type + "\"";
    }
}


