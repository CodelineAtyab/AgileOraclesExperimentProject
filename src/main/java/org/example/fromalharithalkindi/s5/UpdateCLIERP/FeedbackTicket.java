package org.example.fromalharithalkindi.s5.UpdateCLIERP;

/**
 * CONCRETE CLASS: FeedbackTicket
 *
 * A second concrete subclass of Ticket — exists to make POLYMORPHISM
 * observable at runtime (the same Ticket reference can point to either
 * a ComplaintTicket or a FeedbackTicket and behave differently).
 *
 * Key OOP Concepts here:
 *  - extends         → inherits Ticket's shared behaviour
 *  - @Override       → its own getId() / getType() implementation
 *  - Polymorphism    → different runtime type, same compile-time interface
 */
public class FeedbackTicket extends Ticket {

    // Feedback-specific fields
    private final int    rating;    // 1–5 stars
    private final String category;  // e.g. "UI", "Performance", "Support"

    // Independent sequence counter (separate from complaints)
    private static int counter = 1;
    private final int sequenceNumber;

    // ── Constructor ───────────────────────────────────────────────────────
    public FeedbackTicket(String title,
                          String description,
                          String submittedBy,
                          String createdAt,
                          int    rating,
                          String category) {
        super(title, description, submittedBy, createdAt);
        this.rating         = Math.max(1, Math.min(5, rating)); // clamp to 1-5
        this.category       = category;
        this.sequenceNumber = counter++;
    }

    // ── METHOD OVERRIDING ─────────────────────────────────────────────────
    /**
     * Custom ID format for feedback: FBK-0001, FBK-0002, …
     * Different prefix from ComplaintTicket — same method name, different logic.
     */
    @Override
    public String getId() {
        return String.format("FBK-%04d", sequenceNumber);
    }

    @Override
    public String getType() {
        return "Feedback   [" + getStars() + "]";
    }

    /**
     * Appends feedback-specific lines after the shared base details.
     */
    @Override
    public String getDetails() {
        return super.getDetails() + "\n" +
                String.format("%-14s: %s", "Category", category) + "\n" +
                String.format("%-14s: %s (%d/5)", "Rating", getStars(), rating);
    }

    // ── Feedback-specific behaviour ───────────────────────────────────────
    public boolean isPositive() {
        return rating >= 4;
    }

    // ── Private helper ────────────────────────────────────────────────────
    private String getStars() {
        return "⭐".repeat(rating) + "☆".repeat(5 - rating);
    }

    // ── Getters ───────────────────────────────────────────────────────────
    public int    getRating()   { return rating; }
    public String getCategory() { return category; }
}
