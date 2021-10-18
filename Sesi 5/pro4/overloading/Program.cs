using System;

namespace overloading {
    class Program {
    static void Main(string[] args) {
        data datanew = new data();
        Console.Write("Masukkan nama: ");
        string nama = Convert.ToString(Console.ReadLine());
        datanew.print(nama);
        Console.Write("Masukkan nomor HP: ");
        double hp = Convert.ToDouble(Console.ReadLine());
        datanew.print(hp);
        Console.Read();
    }
}
}