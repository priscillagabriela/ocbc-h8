using System;

namespace No1 {
public class nomor1 {
    public static void Main(string[] args) {
        string alfabet = "abcdefghijklmnopqrstuvwxyz";
        Console.Write("Enter the range: ");
        int range = int.Parse(Console.ReadLine());

        for(int i=range; i>0; i--) {
            Console.WriteLine(" ");
        }
        for(int i=0; i<range; i++) {
            String alf = alfabet.Substring(0,i); 
            Console.WriteLine(alf.ToUpper());
        }
    }
}
}