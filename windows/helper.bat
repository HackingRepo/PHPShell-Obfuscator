@echo off
:: Prompt the user for input
set /p inp="Enter an IP or PORT to encode: "

:: Encode the input to Base64 using CertUtil
echo %inp% | certutil -encodehex -f - 2>&1 | findstr /v "CertUtil" | findstr /v "-----" > encoded.txt

:: Read the encoded result from the file
set /p encoded=<encoded.txt

:: Print the Base64 encoded result
echo Base64 Encoded Output: %encoded%

:: Clean up the temporary file
