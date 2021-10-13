using System;

namespace pro2 {

    public class class_pesawat {
        public string nama;
        public string ketinggian;

        public string Ketinggian {
            get { return this.ketinggian; }
            set { this.ketinggian = value; }
        }

        public void terbang() {
            Console.WriteLine("Pesawat dengan nama {0}, sedang take off", this.nama);
        }

        public void sudahterbang() {
            Console.WriteLine("Pesawat sekarang berada pada ketinggian {0}", this.ketinggian);
        }
    }
}
