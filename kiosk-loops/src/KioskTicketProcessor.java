import java.util.Scanner;

/**
 * A simple console program that processes kiosk ticket numbers
 * using both while-loop and for-loop approaches.
 */
public class KioskTicketProcessor {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // Get queue size from user with basic validation
        System.out.print("How many tickets are in today's queue? ");
        int queueSize = 0;
        try {
            queueSize = scanner.nextInt();
            scanner.nextLine(); // consume newline
            
            if (queueSize <= 0) {
                System.out.println("Queue size must be positive. Exiting.");
                scanner.close();
                return;
            }
        } catch (Exception e) {
            System.out.println("Please enter a valid number. Exiting.");
            scanner.close();
            return;
        }
        
        // Part 1: Process tickets using while-loop
        System.out.println("\n--- Part 1: Processing with while-loop ---");
        processWithWhileLoop(scanner, queueSize);
        
        // Part 2: Process tickets using for-loop
        System.out.println("\n--- Part 2: Processing with for-loop ---");
        processWithForLoop(scanner, queueSize);
        
        scanner.close();
        System.out.println("\nAll tickets processed. Have a great day!");
    }
    
    /**
     * Processes tickets using a while-loop.
     * The loop uses parentheses () for the condition and braces {} for the body.
     * @param scanner Scanner for reading user input
     * @param queueSize Number of tickets to process
     */
    private static void processWithWhileLoop(Scanner scanner, int queueSize) {
        int count = 0; // Initialize counter before the loop
        
        // while-loop with condition in parentheses () and body in braces {}
        while (count < queueSize) {
            System.out.print("Enter next ticket number: ");
            String ticketNumber = scanner.nextLine();
            
            // Use printf to embed the ticket number in the output
            System.out.printf("Processed ticket #%s%n", ticketNumber);
            
            count++; // Update counter inside the loop body
        }
    }
    
    /**
     * Processes tickets using a for-loop.
     * The for-loop uses parentheses () for initialization, condition, and update.
     * The loop body is enclosed in braces {}.
     * @param scanner Scanner for reading user input
     * @param queueSize Number of tickets to process
     */
    private static void processWithForLoop(Scanner scanner, int queueSize) {
        // for-loop: initializer, condition, and updater are in parentheses ()
        // The variable i is scoped only to this loop
        for (int i = 0; i < queueSize; i++) {
            System.out.print("Enter next ticket number: ");
            String ticketNumber = scanner.nextLine();
            
            // Use printf to embed the ticket number in the output
            System.out.printf("Processed ticket #%s%n", ticketNumber);
        }
        // Note: variable i is not accessible here (proper scope)
    }
}
