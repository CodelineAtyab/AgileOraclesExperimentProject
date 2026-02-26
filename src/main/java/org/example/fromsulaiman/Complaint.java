public class Complaint {

    private int complaintId;    private String description;
    private String priority;
    private String status;

    public Complaint(int complainId, String description, String priority){
        this.complaintId =complainId;
        this.description= description;
        this.priority =priority;
    }

    public int getComplaintId(){
        return complaintId;
    }
    public String getDescription(){
        return description;
    }
    public String getPriority(){
        return priority;
    }
    public String getStatus(){
        return status;
    }
    public void closeComplaint(){
        this.status = "CLOSED";
    }
    @Override
    public String toString(){
        return "Complaint ID: " + complaintId +
                "\nDescription: " + description +
                "\nPriority: " + priority +
                "\nStatus: " + status;
    }


}