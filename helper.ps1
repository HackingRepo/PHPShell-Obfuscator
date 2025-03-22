# Prompt the user for input
$inp = Read-Host "Enter an IP or PORT to encode"

# Convert the input to Base64
$encoded = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($inp))

# Print the Base64 encoded result
Write-Output "Base64 Encoded Output: $encoded"

