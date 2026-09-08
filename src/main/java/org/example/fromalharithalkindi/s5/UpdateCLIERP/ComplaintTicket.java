package org.example.fromalharithalkindi.s5.UpdateCLIERP;

public class ComplaintTicket extends Ticket {

    private static int count;
    private int num;



    public ComplaintTicket(String title, String description) {
        super(title, description);
        this.num = ++count;
    }
    @Override
    public  String getId(){
        return String.format("COMP-%03d",num);
    }

}
