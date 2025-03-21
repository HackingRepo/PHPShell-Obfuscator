<?php
echo "Enter a IP or a PORT. :  ";
$iporport = fgets(STDIN);
function encode_payload($payload) {
return base64_encode($payload);
}
echo "Encoded IP or PORT is : ",encode_payload($iporport); 

?>
