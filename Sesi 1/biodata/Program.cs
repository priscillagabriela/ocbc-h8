using System;

namespace biodata
{
    public class Program {
        public static void Main(String[] args) {
            Console.WriteLine("Hello World!");

            string fname, lname, alamat, tgllahir;
            int umur;
            
            Console.Write("enter your first name : ");
            fname = Console.ReadLine();

            Console.Write("enter your lasts name : ");
            lname = Console.ReadLine();

            Console.Write("enter your age : ");
            umur = int.Parse(Console.ReadLine());
            
            Console.Write("enter your address : ");
            alamat = Console.ReadLine();

            Console.Write("enter your birthdate : ");
            tgllahir = Console.ReadLine();
            
            Console.WriteLine("------------------------------------");
            Console.WriteLine("today date "+DateTime.Now.ToString());
            Console.WriteLine("your full name is "+fname+ " "+lname);
            Console.WriteLine("your age "+umur);
            Console.WriteLine("your address "+alamat);
            Console.WriteLine("your birthdate "+tgllahir);
        }
    }
}
