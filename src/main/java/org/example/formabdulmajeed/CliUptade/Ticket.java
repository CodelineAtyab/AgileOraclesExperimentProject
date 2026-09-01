package org.example.formabdulmajeed.CliUptade;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public abstract class Ticket {
    private String id;
    private String commit;
    private static final DateTimeFormatter TIME_FORMAT = DateTimeFormatter.ofPattern("HH:mm:ss");

    public Ticket( String commit) {
        this.commit = commit;
    }

    public abstract String getId();

    public void setId(String id) {
        this.id = id;
    }

    public String getCommit() {
        return commit;
    }

    public void setCommit(String commit) {
        this.commit = commit;
    }

    private static String localTime() {
            return LocalTime.now().format(TIME_FORMAT);
    }
    public String getlocalTime(){
        return localTime();
    }
}
