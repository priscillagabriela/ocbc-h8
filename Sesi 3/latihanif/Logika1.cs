using System;

namespace latihanif {
    public class Logika1 {
    public static void Main() {
        Console.Write("Nilai a: ");
        int a = int.Parse(Console.ReadLine());
        Console.Write("Nilai b: ");
        int b = int.Parse(Console.ReadLine()); 
        if(a > b) {
            Console.WriteLine("a lebih besar dari b");
        } else if(a < b) {
            Console.WriteLine("a lebih kecil dari b");
        } else {
            Console.WriteLine("a sama dengan b");
        }
    }
}
}
