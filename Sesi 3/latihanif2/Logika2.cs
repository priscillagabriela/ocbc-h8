using System;

namespace latihanif2{
    public class Logika2 {
    public static void Main() {
        Console.Write("Nilai: ");
        int nilai = int.Parse(Console.ReadLine());
        
        if(nilai < 60) {
            Console.WriteLine("Nilai Kamu C" );
        }
        else if (nilai < 80) {
            Console.WriteLine("Nilai kamu B");
        }
        else {
            Console.WriteLine("Nilai kamu A");
        }
    }
}
}
