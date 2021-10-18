using System;

namespace No6 {
public class nomor6 {
    public static void Main(string[] args) {
        Console.Write("Enter a word: ");
        string word = Console.ReadLine();
        string word2 = "";
        string[] arr = new string[word.Length];

        for(int i=0; i<arr.Length; i++) {
            arr[i] = word.Substring(word.Length-i-1,1);
        }

        Console.Write("Reversed Word: ");
        for(int i=0; i<arr.Length; i++) {
            word2 = string.Concat(word2,arr[i]);
        }
        Console.WriteLine(word2);
        if(word2==word) {
            Console.Write("Word '" + word + "' is palindrome.");
        } else {
            Console.Write("Word '" + word + "' is not palindrome.");
        }
    }
}
}