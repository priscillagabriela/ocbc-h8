using System;

namespace No5 {
public class nomor5 {
    public static void Main(string[] args) {
        Console.Write("Enter the number: ");
        string num = Console.ReadLine();
        int num2 = int.Parse(num);
        string[] arr = new string[num.Length];;

        for(int i=0; i<arr.Length; i++) {
            arr[i] = num.Substring(i,1);
        }

        Console.Write("Spelling: ");
        for(int i=0; i<arr.Length; i++) {
            if(arr[i]=="0") {
                Console.Write("zero ");
            } else if(arr[i]=="1") {
                Console.Write("one ");
            } else if(arr[i]=="2") {
                Console.Write("two ");
            } else if(arr[i]=="3") {
                Console.Write("three ");
            } else if(arr[i]=="4") {
                Console.Write("four ");
            } else if(arr[i]=="5") {
                Console.Write("five ");
            } else if(arr[i]=="6") {
                Console.Write("six ");
            } else if(arr[i]=="7") {
                Console.Write("seven ");
            } else if(arr[i]=="8") {
                Console.Write("eight ");
            } else if(arr[i]=="9") {
                Console.Write("nine ");
            }
        }
        Console.WriteLine();
        if((num2%2)==1) {
            Console.Write("Number " + num2 + " is an odd number.");
        } else {
            Console.Write("Number " + num2 + " is an even number.");
        }
        
    }
}
}