package org.example.fromrazan.Sprint6A;

 class ComplaintTicket extends Ticket {


    private static int count = 0;
    private String type;

    public ComplaintTicket(String comment, String type){
        super("CT" + (++count),comment); // for call parent
        this.type = type;


        System.out.println("CompaintTicket" + idTicket+ "added");
    }

    public static int getCount(){
        return count;
    }
    public String toString(){
        return "[Complaint] id= " + idTicket + ", comment=/" + comment + "\", type=\"" + type + "\"";
    }
}
