using System;

namespace pro2 {
    class Program {
    public static void Main(string[] args) {
        class_pesawat pesawat = new class_pesawat();
        Console.Write("Masukkan nama: ");
        pesawat.nama = Console.ReadLine();
        Console.Write("Masukkan ketinggian: ");
        pesawat.ketinggian = Console.ReadLine();

        pesawat.terbang();
        pesawat.sudahterbang();
        Console.Read();
    }
}
}