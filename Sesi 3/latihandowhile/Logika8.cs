using System;

namespace latihandowhile {
    public class Logika8 {
    public static void Main() {
        Console.Write("Nilai: ");
        int nilai = int.Parse(Console.ReadLine());

        Console.Write("Start: ");
        int start = int.Parse(Console.ReadLine());

        Console.Write("End: ");
        int end = int.Parse(Console.ReadLine());

        Console.Write("Masukkan 1 untuk +; 2 untuk -; 3 untuk x; 4 untuk /: ");
        int pilih = int.Parse(Console.ReadLine());

        do {
            Console.WriteLine("i = {0}", start);
            if(pilih==1) {
                Console.WriteLine("Hasil = {0}", start+nilai);
            } else if(pilih==2) {
                Console.WriteLine("Hasil = {0}", start-nilai);
            } else if(pilih==3) {
                Console.WriteLine("Hasil = {0}", start*nilai);
            } else {
                Console.WriteLine("Hasil = {0}", start/nilai);
            }
            start++;

            if(start > end) {
                break;
            }
        } while (start < 10);
    }
}
}