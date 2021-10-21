using System;

namespace No3 {
public class nomor3 {
    public static void Main(string[] args) {
        int total = 1;
        Console.Write("Enter any number: ");
        int num = int.Parse(Console.ReadLine());

        Console.Write("Factorial of " + num + " is: ");
        for(int i=num; i>0; i--) {
            total = total*i;
            if(i!=1) {
                Console.Write(i + " x ");
            } else {
                Console.Write(i + " = ");
            }
        }
        Console.Write(total);
    }
}
}