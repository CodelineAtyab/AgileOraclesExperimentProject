public class Complaint {

    private int complainId;
    private String description;
    private String priority;

    public Complaint(int complainId, String description, String priority){
        this.complainId =complainId;
        this.description= description;
        this.priority =priority;
    }

    public int getComplainId(){
        return complainId;
    }
    public String getDescription(){
        return description;
    }
    public String getPriority(){
        return priority;
    }


}