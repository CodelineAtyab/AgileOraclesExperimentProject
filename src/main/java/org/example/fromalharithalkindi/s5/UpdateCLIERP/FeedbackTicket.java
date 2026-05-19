package org.example.fromalharithalkindi.s5.UpdateCLIERP;


public class FeedbackTicket extends Ticket {

    private static int count=0;
    private int num;


    public FeedbackTicket(String title, String description)
    {
        super(title, description);
        this.num = ++count;
    }

    @Override
    public String getId()
    {
        return String.format("FEED-%03d", num);
    }

}


