package org.example.fromkawther.erp;

public class Complaint {
    int id;
    String description;
    String priority;
    String status;

    public Complaint(int id, String description, String priority) {
        this.id = id;
        this.description = description;
        this.priority = priority;
        this.status = "OPEN";
    }}

