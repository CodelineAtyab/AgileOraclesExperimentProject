package org.example.fromalharithalkindi.s5.UpdateCLIERP;

public abstract  class Ticket {
    private  String title;
    private  String description;


    public Ticket(String title,String description)
    {
        this.title=title;
        this.description=description;

    }

    public abstract String getId();

    public  String getSummary()
    {
        return buildSummary();
    }

    private String buildSummary()
    {
        return "[ "+getId()+" ] ,"+title+" - "+ description;

    }
    public String getTitle()
    {
        return title;
    }
    public String getDescription()
    {
        return description;
    }


}






