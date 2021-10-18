using System;

namespace No2 {
public class nomor2 {
    public static void Main(string[] args) {
        Console.WriteLine("Choose one of these choice: \n 1. normal triangle \n 2. upside down triangle");
        Console.Write("Choosen: ");
        int choice = int.Parse(Console.ReadLine());
        Console.Write("Enter the range: ");
        int range = int.Parse(Console.ReadLine());
        int[] arr = new int[range];
        for(int i=0; i<arr.Length; i++) {
            arr[i] = i+1;
        }
        if(choice==1) {
            for(int i=0; i<range; i++) {
                for(int j=range; j>=i; j--) {
                    Console.Write(" ");
                }
                for(int k=0; k<=i; k++) {
                    Console.Write(arr[k]);
                }
                for(int l=i; l>=1; l--) {
                    Console.Write(arr[l-1]);  
                }
                Console.WriteLine();
            }
        }
        else {
            for(int i=range-1; i>=0; i--) {
                for(int j=range; j>=i; j--) {
                    Console.Write(" ");
                }
                for(int k=0; k<=i; k++) {
                    Console.Write(arr[k]);
                }
                for(int l=i; l>=1; l--) {
                    Console.Write(arr[l-1]);  
                }
                Console.WriteLine();
            }
        } 
    }
}
}