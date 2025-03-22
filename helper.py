import base64
inp = input('Enter a IP or PORT To Encode >> ')
b = bytes(inp,'utf-8')
f = base64.b64encode(b)
print(f)
