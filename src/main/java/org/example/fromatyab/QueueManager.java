package org.example.fromatyab;

import java.util.*;

public class QueueManager {
    public static void main(String[] args) {
        Queue<String> ticketSequence = new LinkedList<>();
        Scanner inpBuffer = new Scanner(System.in);

        // Four People got the ticket in the morning and are waiting for their turn
        ticketSequence.offer("a1");
        System.out.println("Issued a ticket!");

        ticketSequence.offer("a2");
        System.out.println("Issued a ticket!");

        ticketSequence.offer("a3");
        System.out.println("Issued a ticket!");

        ticketSequence.offer("a4");
        System.out.println("Issued a ticket!");


        Thread consumer = new Thread(() -> {
            while(!ticketSequence.isEmpty()) {
                String currentTicket = ticketSequence.poll();
                System.out.printf("Now SERVING: %s\n", currentTicket);
                inpBuffer.nextLine();
                System.out.printf("Successfully Served: %s\n", currentTicket);
            }
        });

        try {
            System.out.println("Waiting for ROP to boot up their systems!");
            Thread.sleep(5000);
            System.out.println("ROP is ready to serve the ticket holders!");

            inpBuffer.nextLine();
            consumer.start();
            consumer.join();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

        // Checking the tail element
        /*
        String tailElement = "";
        while(!ticketSequence.isEmpty()) {
            String currElement = ticketSequence.poll();
            if (currElement != null)
                tailElement = currElement;
        }
        System.out.println(tailElement);
        */
    }
}
