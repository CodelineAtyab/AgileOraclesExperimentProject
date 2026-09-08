package org.example.fromalharithalkindi.s4;

public class S4SortAndServe {
    public static void main(String[] args)
    {

        String algo="selection";

        String input;

        if (args[0].startsWith(("--algo=")))
        {
            algo=args[0].split("=")[1];
            input=args[1];

        }
        else
        {
            input=args[0];
        }
        String[] parts =input.split(",");
        int[] numbers = new int [parts.length];

        if(parts.length<3)
        {
            System.out.println("enter 3 numbers as least ");
            return;
        }
        for(int i =0;i<parts.length;i++)
        {
            try{
                numbers[i]=Integer.parseInt(parts[i]);
            } catch (NumberFormatException e) {

               System.out.println(" should be numbers!!! "+parts[i]);
               return;
            }
        }
        for (int i =0; i < parts.length; i++) {
            numbers[i] = Integer.parseInt(parts[i]);
        }


        if (algo.equals("bubble")) {
            bubbleSort(numbers);
        } else {
            seletionSort(numbers);
        }


        System.out.print("Sorted: ");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
        System.out.println();


        System.out.print("Intern queue: ");
        for (int i = 0; i < 3; i++) {
            System.out.print(numbers[i] + " ");
        }
    }
    static void seletionSort(int[] arr)
    {

        int n=arr.length;
        for(int i=0;i<n-1;i++)
        {
            int minIndex =i;

            for(int j =i+1;j<n;j++)
            {
                if(arr[j]<arr[minIndex])
                {
                    minIndex=j;
                }
            }

            int temp = arr[minIndex];
            arr[minIndex]=arr[i];
            arr[i]=temp;
        }
    }

    static void bubbleSort(int[]arr)
    {
        int n = arr.length;
        for(int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j]> arr[j+1])
                {
                    int temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;

                }

            }
        }
    }
}
