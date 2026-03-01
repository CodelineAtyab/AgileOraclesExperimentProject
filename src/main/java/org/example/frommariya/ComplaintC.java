package org.example.frommariya;

public class ComplaintC {
    private int id;
    private String desc;
    private String priority;

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
