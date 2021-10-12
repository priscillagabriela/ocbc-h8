using System;

namespace No4 {
public class nomor4 {
    public static void Main(string[] args) {
        Console.Write("Enter a number: ");
        string num = Console.ReadLine();
        string[] arr = new string[num.Length];;

        for(int i=0; i<arr.Length; i++) {
            arr[i] = num.Substring(num.Length-i-1,1);
        }

        Console.Write("Reversed Number: ");
        for(int i=0; i<arr.Length; i++) {
            Console.Write(arr[i]);
        }
    }
}
}