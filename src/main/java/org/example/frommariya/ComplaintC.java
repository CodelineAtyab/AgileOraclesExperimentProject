package org.example.frommariya;

public class ComplaintC {
    public int id;
    public String desc;
    public String priority;
    public String status;
    public String assignTo; //T4


    public ComplaintC(int id, String desc, String priority){
        this.id =id;
        this.desc = desc;
        this.priority = priority;
        this.status = "OPEN";
        this.assignTo = "Unassigned";
    }

    @Override
    public String toString(){
        return "Complaint ID: " + id + "\nPriority: " + priority + "\nAssigned To: " + assignTo + "\nDescription: "+desc;
    }


}
