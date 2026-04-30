package org.example.fromalharithalkindi.s5.UpdateCLIERP;

public class ComplaintTicket extends Ticket {


    private final String priority;
    private final String department;


    private static int counter = 1;
    private final int sequenceNumber;


    public ComplaintTicket(String title,
                           String description,
                           String submittedBy,
                           String createdAt,
                           String priority,
                           String department) {
        super(title, description, submittedBy, createdAt);
        this.priority       = priority.toUpperCase();
        this.department     = department;
        this.sequenceNumber = counter++;
    }


    @Override
    public String getId() {
        return String.format("CMP-%04d", sequenceNumber);
    }

    @Override
    public String getType() {
        return "Complaint  [" + getPriorityEmoji() + " " + priority + "]";
    }


    @Override
    public String getDetails() {
        return super.getDetails() + "\n" +
                String.format("%-14s: %s", "Department",  department) + "\n" +
                String.format("%-14s: %s", "Priority",    priority);
    }


    public boolean isCritical() {
        return "CRITICAL".equals(priority);
    }


    private String getPriorityEmoji() {
        return switch (priority) {
            case "CRITICAL" -> "CRITICAL";
            case "HIGH"     -> "HIGH";
            case "MEDIUM"   -> "MEDIUM";
            default         -> "LOW";
        };
    }

    public String getPriority()   { return priority; }
    public String getDepartment() { return department; }
}
