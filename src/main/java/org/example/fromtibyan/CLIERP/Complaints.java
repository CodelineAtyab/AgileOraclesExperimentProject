package org.example.fromtibyan.CLIERP;

public class Complaints {
    int complaintId;
    String complaintDescription;
    String complaintPriority;
    String complaintStatus;


    public Complaints(int complaintId, String complaintDescription, String complaintPriority, String complaintStatus) {
        this.complaintId = complaintId;
        this.complaintDescription = complaintDescription;
        this.complaintPriority = complaintPriority;
        this.complaintStatus = complaintStatus;
    }

    public int getComplaintId() {
        return complaintId;
    }

    public String getComplaintDescription() {
        return complaintDescription;
    }

    public String getComplaintPriority() {
        return complaintPriority;
    }

    public String getComplaintStatus() {
        return complaintStatus;
    }

    public void setComplaintStatus(String complaintStatus){
        this.complaintStatus = complaintStatus;
    }

}
