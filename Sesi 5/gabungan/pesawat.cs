using System;

namespace gabungan {
    public class pesawat {
        public string Nama;
        public int JumlahRoda;
        public string Ketinggian;
        public string JumlahPenumpang;

        public void terbang() {
            Console.WriteLine("Pesawat Tempur dengan nama {0}, yang mempunyai jumlah roda {1}, sedang berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak {3} Akan meledakan senjata", this.Nama, this.JumlahRoda, this.Ketinggian, this.JumlahPenumpang);
        }
    }
}