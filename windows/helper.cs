using System;

class Program
{
    static void Main()
    {
        // Prompt the user for input
        Console.Write("Enter an IP or PORT to encode: ");
        string inp = Console.ReadLine();

        // Convert the input string to Base64
        string encoded = Convert.ToBase64String(System.Text.Encoding.UTF8.GetBytes(inp));

        // Print the Base64 encoded result
        Console.WriteLine("Base64 Encoded Output: " + encoded);
    }
}

