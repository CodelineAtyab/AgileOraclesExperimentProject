package org.example.fromalharithalkindi.s5.UpdateCLIERP;

public abstract  class Ticket {

    private final String title;
    private final String description;
    private final String submittedBy;
    private final String createdAt;

    public Ticket(String title, String description, String submittedBy, String createdAt) {
        this.title       = title;
        this.description = description;
        this.submittedBy = submittedBy;
        this.createdAt   = createdAt;
    }
    public abstract String getId();
    public abstract String getType();

    public String getDetails() {
        return String.join("\n",
                formatLine("ID",          getId()),
                formatLine("Type",        getType()),
                formatLine("Title",       title),
                formatLine("Description", description),
                formatLine("Submitted by",submittedBy),
                formatLine("Created at",  createdAt)
        );
    }

    public void display() {
        String border = "─".repeat(52);
        System.out.println("┌" + border + "┐");
        System.out.println("│    TICKET DETAILS" + " ".repeat(32) + "│");
        System.out.println("├" + border + "┤");
        for (String line : getDetails().split("\n")) {
            System.out.printf("│  %-50s│%n", line);
        }
        System.out.println("└" + border + "┘");
    }

    private String formatLine(String label, String value) {
        return String.format("%-14s: %s", label, value);
    }

    public String getTitle()       { return title; }
    public String getDescription() { return description; }
    public String getSubmittedBy() { return submittedBy; }
    public String getCreatedAt()   { return createdAt; }
}




