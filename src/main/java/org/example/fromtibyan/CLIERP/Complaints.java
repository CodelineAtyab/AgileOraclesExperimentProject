package org.example.fromtibyan.CLIERP;

public class Complaints {
    int complaintId;
    String complaintDescription;
    String complaintPriority;
    String complaintStatus;
    String assignedStaff;


    public Complaints(int complaintId, String complaintDescription, String complaintPriority, String complaintStatus, String assignedStaff) {
        this.complaintId = complaintId;
        this.complaintDescription = complaintDescription;
        this.complaintPriority = complaintPriority;
        this.complaintStatus = complaintStatus;
        this.assignedStaff = assignedStaff;
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

    public String getAssignedStaff() {
        return assignedStaff;
    }

    public void setComplaintStatus(String complaintStatus){
        this.complaintStatus = complaintStatus;
    }

    public void setAssignStaff(String assignedStaff) {
        this.assignedStaff=assignedStaff;
    }

}
