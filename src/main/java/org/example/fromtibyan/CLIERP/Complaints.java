package org.example.fromtibyan.CLIERP;

public class Complaints {
    int complaintId;
    String complaintDescription;
    String[] complaintPriority = {"LOW", "MEDIUM", "HIGH"};
    String cPriorityIndex;

    public Complaints(int complaintId, String complaintDescription, int index) {
        this.complaintId = complaintId;
        this.complaintDescription = complaintDescription;
        this.cPriorityIndex = complaintPriority[index];
    }

    public int getComplaintId() {
        return complaintId;
    }

    public String getComplaintDescription() {
        return complaintDescription;
    }

    public String getComplaintPriority() {
        return cPriorityIndex;
    }

}
