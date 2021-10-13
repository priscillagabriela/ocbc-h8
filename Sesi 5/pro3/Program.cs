using System;

namespace pro3 {
    class Program {
    public static void Main(string[] args) {
        pesawat pesawat = new pesawat();
        pesawat_tempur pswttempur = new pesawat_tempur();

        Console.Write("Masukkan nama: ");
        pesawat.Nama = Convert.ToString(Console.ReadLine());
        Console.Write("Masukkan jumlah roda: ");
        pesawat.JumlahRoda = Convert.ToInt32(Console.ReadLine());
        Console.Write("Masukkan ketinggian: ");
        pesawat.Ketinggian = Convert.ToString(Console.ReadLine());
        Console.Write("Masukkan jumlah penumpang: ");
        pesawat.JumlahPenumpang = Convert.ToString(Console.ReadLine());
        Console.Write("Masukkan nama: ");
        pswttempur.Nama = Convert.ToString(Console.ReadLine());
        Console.Write("Masukkan jumlah roda: ");
        pswttempur.JumlahRoda = Convert.ToInt32(Console.ReadLine());
        Console.Write("Masukkan ketinggian: ");
        pswttempur.Ketinggian = Convert.ToString(Console.ReadLine());
        Console.Write("Masukkan jumlah penumpang: ");
        pswttempur.JumlahPenumpang = Convert.ToString(Console.ReadLine());

        pesawat.terbang();
        //pswttempur.terbangtinggi();
        Console.Read();
    }
}
}