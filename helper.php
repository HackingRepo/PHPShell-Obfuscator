<?php
// The Script for encode a IP and PORT is used for generate obfuscated reverse shell
echo "Enter a IP or a PORT. :  ";
$iporport = fgets(STDIN);
function encode_payload($payload) {
return base64_encode($payload);
}
echo "Encoded IP or PORT is : ",encode_payload($iporport); 

?>
