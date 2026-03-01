package org.example.frommariya;

public class ComplaintC {
    public int id;
    private String desc;
    private String priority;
    public String Status;

    public ComplaintC(int id, String desc, String priority){
        this.id =id;
        this.desc = desc;
        this.priority = priority;
    }

    @Override
    public String toString(){
        return "Complaint ID: " + id + "\nPriority: " + priority + "\nDescription: "+desc;
    }


}
