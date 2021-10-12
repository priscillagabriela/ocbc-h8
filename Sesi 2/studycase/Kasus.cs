using System;

namespace studycase {
    class Kasus {
    public static void Main(String[] args) {
        Console.Write("Enter your age: ");
        int age = int.Parse(Console.ReadLine());
        Console.Write("Username: ");
        string username = Console.ReadLine();
        Console.Write("Password: ");
        string password = Console.ReadLine();

        bool isAdult = age > 18;
        bool isUsernameValid = username == "priscilla";
        bool isPasswordValid = password == "OCBC";

        if(isAdult && isUsernameValid && isPasswordValid) {
                Console.WriteLine("===Biodata===");
                Console.Write("Jenis kelamin: ");
                string jenkel = Console.ReadLine();
                Console.Write("Status nikah: ");
                string stat = Console.ReadLine();
                int pertama, kedua, ketiga, total;
                double rata;
                Console.WriteLine("===Aritmatika===");
                Console.Write("Masukan nilai PERTAMA: ");
                pertama = int.Parse(Console.ReadLine());
                Console.Write("Masukan nilai KEDUA: ");
                kedua = int.Parse(Console.ReadLine());
                Console.Write("Masukan nilai KETIGA: ");
                ketiga = int.Parse(Console.ReadLine());

                total = pertama + kedua + ketiga;
                rata = total / 3.0;
                bool isMarried = stat == "nikah";

                Console.WriteLine("===Output===");
                Console.WriteLine("Jenis Kelamin: " + jenkel);
                if(isMarried) {
                    Console.WriteLine("Status Nikah: true");
                } else {
                    Console.WriteLine("Status Nikah: false");
                }
                Console.WriteLine("Total Nilai adalah: " + total);
                Console.WriteLine("Rata Rata Nilai adalah: " + rata);
                Console.Read();
        }
        else {
            Console.WriteLine("Sorry, try again!");
        }
    }
}
}