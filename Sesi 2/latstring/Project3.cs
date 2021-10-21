using System;

namespace latstring {
    public class Project3 {
    public static void Main(String[] args) {
        string nama;
        int umur;
        Console.WriteLine("=== PROGRAM PENDAFTARAN PENDUDUK ===");
        Console.Write("Masukan nama: ");
        nama = Console.ReadLine();
        Console.Write("Masukan alamat: ");
        var alamat = Console.ReadLine();
        Console.Write("Masukan umur: ");
        umur = int.Parse(Console.ReadLine());

        Console.WriteLine();
        Console.WriteLine("Terimakasih!");
        Console.WriteLine("Data Berikut");
        Console.WriteLine($"Nama: {nama}");
        Console.WriteLine($"Alamat: {alamat}");
        Console.WriteLine($"Umur: {umur}");
        Console.WriteLine("SUDAH DISIMPAN!");
    }
}
}