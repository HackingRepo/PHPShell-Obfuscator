const readline = require('readline');
const Buffer = require('buffer').Buffer;

// Create an interface for user input
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Ask for IP or PORT input
rl.question('Enter an IP or PORT to encode: ', (inp) => {
  // Convert the input to a Buffer and encode it in base64
  const encoded = Buffer.from(inp, 'utf-8').toString('base64');
  
  // Output the base64 encoded string
  console.log('Encoded IP Or Port in Base64 :', encoded);

  // Close the input interface
  rl.close();
});

