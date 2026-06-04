package org.example.fromtibyan.CLIERP;
public class Complaints {
    int complaintId;
    String complaintDescription;
    String complaintPriority;
    String complaintStatus;
    String assignedStaff;
    String staffComments;


    public Complaints(int complaintId, String complaintDescription, String complaintPriority, String complaintStatus, String assignedStaff, String staffComments) {
        this.complaintId = complaintId;
        this.complaintDescription = complaintDescription;
        this.complaintPriority = complaintPriority;
        this.complaintStatus = complaintStatus;
        this.assignedStaff = assignedStaff;
        this.staffComments = staffComments;
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

    public String getStaffComments(){return staffComments;}

    public void setComplaintStatus(String complaintStatus){
        this.complaintStatus = complaintStatus;
    }

    public void setAssignStaff(String assignedStaff) {
        this.assignedStaff = assignedStaff;
    }

    public void setStaffComments(String staffComments){
        this.staffComments = staffComments;
    }

}
