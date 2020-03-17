# Fooling around with Steganography

## challenge.html

Polyglot file
interpretable as python, bash and html

{`google-chrome`,`firefox`,`opera`} `./challenge.html`
*   displays the html. F12 to access the JS function (useless for now)

`bash ./challenge.html`
*   gives the checksum of the file (first part of the flag)

`python3 ./challenge.html`
*   prompts for a string and hash it

`bash ./challenge.html | python3 ./challenge.html`
*   gives the hash of checksum of the file (second part of the flag)

### Solution

`bash ./challenge.html ; bash ./challenge.html | python3 ./challenge.html`<br>
gives the whole flag