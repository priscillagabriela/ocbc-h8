using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pro1 {
    class Program {
    public static void Main(string[] args) {
        Laptop laptop1 = new Laptop();

        Console.Write("Masukkan merek Laptop: ");
        laptop1.merk = Console.ReadLine();
        Console.Write("Masukkan kapasitas Ram: ");
        laptop1.ram = int.Parse(Console.ReadLine());
        Console.Write("Masukkan kapasitas Memory: ");
        laptop1.memory = int.Parse(Console.ReadLine());

        Console.WriteLine("\n Merk Laptop adalah {0}", laptop1.merk);
        Console.WriteLine("Kapasitas Ram ada {0}", laptop1.ram);
        Console.WriteLine("Kapasitas Memory ada {0}", laptop1.memory);

        laptop1.Chatting();
        laptop1.Sosmed();
        laptop1.OnlineShop();

        Console.Read();
    }
}
}