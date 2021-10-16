using System;

namespace No1 {
public class nomor1 {
    public static void Main(string[] args) {
        string[] arr = new string[26];
        string[] arr2 = new string[26];
        string alfabet = "abcdefghijklmnopqrstuvwxyz";
        string alfabet2 = "zyxwvutsrqponmlkjihgfedcba";

        Console.WriteLine("Choose one of these choice: \n 1. alphabet (A,B,C,..) \n 2. star (*)");
        Console.Write("Choosen: ");
        int choice = int.Parse(Console.ReadLine());
        Console.Write("Enter the range: ");
        int range = int.Parse(Console.ReadLine());
        for(int i=0; i<arr.Length; i++) {
            arr[i] = alfabet.Substring(0,i+1);
        }
        for(int i=0; i<arr.Length; i++) {
            arr2[i] = alfabet2.Substring(0,i+1);
        }
        for(int i=0; i<range; i++) {
            if(choice==1) {
            for(int j=range; j>=i; j--) {
                Console.Write(" ");
            }
                Console.Write(arr[i].ToUpper());
                if(i>=1) {
                    Console.Write(alfabet2.Substring(alfabet2.Length-i,i).ToUpper());
                }
            Console.WriteLine();
            } else {
                for(int j=range; j>=i; j--) {
                    Console.Write(" ");
                }
                for(int k=0; k<=i; k++) {
                    Console.Write("*");
                }
                for(int l=i; l>=1; l--) {
                    Console.Write("*");  
                }
                Console.WriteLine();   
            }
        }
    }
}
}