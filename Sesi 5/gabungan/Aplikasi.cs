using System;

namespace gabungan {
    public class Aplikasi {
    public static void Main(string[] args) {
        bool repeat = false;
        do {
            Console.WriteLine("Masukkan pilihan: \n 1. Pesawat tempur \n 2. Biodata \n 3. Bilangan \n 4.Tentang saya \n 5. Keluar");
            Console.Write("Pilihan: ");
            int choice = Convert.ToInt32(Console.ReadLine());
            string answer = "";

            switch(choice) {
                case 1:
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
                    Console.Write("Kembali ke menu? (y/n): ");
                    answer = Convert.ToString(Console.ReadLine());
                    if (answer.ToLower() == "y") {
                        repeat = true; 
                    } else {
                        repeat = false;
                    }
                    break;
                case 2:
                    data datanew = new data();
                    Console.Write("Masukkan nama: ");
                    string nama = Convert.ToString(Console.ReadLine());
                    datanew.print(nama);
                    Console.Write("Masukkan nomor HP: ");
                    double hp = Convert.ToDouble(Console.ReadLine());
                    datanew.print(hp);
                    Console.WriteLine();
                    Console.Write("Kembali ke menu? (y/n): ");
                    answer = Convert.ToString(Console.ReadLine());
                    if (answer.ToLower() == "y") {
                        repeat = true; 
                    } else {
                        repeat = false;
                    }
                    break;
                case 3:
                    prog overiding = new prog();
                    Console.Write("Masukkan bilangan pertama: ");
                    int a = Convert.ToInt32(Console.ReadLine());
                    Console.Write("Masukkan bilangan kedua: ");
                    int b = Convert.ToInt32(Console.ReadLine());
                    overiding.bilangan(a,b);
                    overiding.penjumlahanperkaliandll();
                    overiding = new overide();
                    overiding.bilangan(a,b);
                    overiding.penjumlahanperkaliandll();
                    Console.WriteLine();
                    Console.Write("Kembali ke menu? (y/n): ");
                    answer = Convert.ToString(Console.ReadLine());
                    if (answer.ToLower() == "y") {
                        repeat = true; 
                    } else {
                        repeat = false;
                    }
                    break;
                case 4:
                    Console.WriteLine("Hallo, nama saya Priscilla. Saya dari jurusan Sistem Informasi dan cukup tertarik dalam ranah coding. Pengalaman saya selama belajar di bootcamp ini, cukup lelah dan sulit sihh.. soalnya background coding saya kurang kuat, tapi semoga saya bisa :)");
                    Console.Write("Kembali ke menu? (y/n): ");
                    answer = Convert.ToString(Console.ReadLine());
                    if (answer.ToLower() == "y") {
                        repeat = true; 
                    } else {
                        repeat = false;
                    }
                    break;
                case 5:
                    repeat = false;
                    break;
            }
        } while(repeat);
    }
}
}