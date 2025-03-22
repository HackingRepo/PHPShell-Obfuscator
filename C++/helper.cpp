#include <iostream>
#include <string>
#include <bitset>
#include <sstream>
#include <iterator>

// Function to encode input string to Base64
std::string base64_encode(const std::string& input) {
    std::string base64_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    std::string encoded_string;
    int val = 0, valb = -6;

    for (unsigned char c : input) {
        val = (val << 8) + c;
        valb += 8;
        while (valb >= 0) {
            encoded_string.push_back(base64_chars[(val >> valb) & 0x3F]);
            valb -= 6;
        }
    }
    if (valb > -6) {
        encoded_string.push_back(base64_chars[((val << 8) >> (valb + 8)) & 0x3F]);
    }
    while (encoded_string.size() % 4) {
        encoded_string.push_back('=');
    }
    return encoded_string;
}

int main() {
    std::string input;
    std::cout << "Enter an IP or PORT to encode: ";
    std::getline(std::cin, input);

    std::string encoded = base64_encode(input);
    std::cout << "Base64 Encoded Output: " << encoded << std::endl;

    return 0;
}

