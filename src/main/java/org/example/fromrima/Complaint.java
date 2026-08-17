package org.example.fromrima;

import java.util.ArrayList;

public class Complaint {
    private int complaintId;
    private String description;
    private String priority;
    private String status;
    private String assignedStaff;
    private ArrayList<String> comments;

    public Complaint(int complaintId, String description, String priority) {
        this.complaintId = complaintId;
        this.description = description;
        this.priority = priority;
        this.status = "OPEN";
        this.assignedStaff = "";
        this.comments = new ArrayList<>();
    }

    public int getComplaintId() {
        return complaintId;
    }

    public String getDescription() {
        return description;
    }

    public String getPriority() {
        return priority;
    }

    public String getStatus() {
        return status;
    }

    public String getAssignedStaff() {
        return assignedStaff;
    }

    public ArrayList<String> getComments() {
        return comments;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setAssignedStaff(String assignedStaff) {
        this.assignedStaff = assignedStaff;
    }

    public void addComment(String comment) {
        comments.add(comment);
    }

    @Override
    public String toString() {
        return "\nComplaint ID: " + complaintId + "\nDescription: " + description + "\nPriority: " + priority + "\nStatus: " + status + "\nAssigned Staff: " + assignedStaff + "\nComments: " + comments;
    }
}
