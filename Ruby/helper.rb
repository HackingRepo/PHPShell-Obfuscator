# Prompt the user to enter an IP or PORT
print "Enter an IP or PORT to encode: "
inp = gets.chomp

# Encode the input to Base64
encoded = [inp].pack('m0')  # 'm0' is used to encode the string to base64

# Print the Base64 encoded result
puts "Base64 Encoded Output: #{encoded}"
