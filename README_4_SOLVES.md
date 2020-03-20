# Fooling around with Steganography

## challenge.html

Polyglot file
interpretable as python, bash and html

<br>

{`google-chrome`,`firefox`,`opera`} `./challenge.html`
*   displays the html. F12 to access the JS function (useless for now)

<br>

`bash ./challenge.html`
*   gives the checksum of the file (first part of the flag)

<br>

`python3 ./challenge.html`
*   prompts for a string and hash it

<br>

`bash ./challenge.html | python3 ./challenge.html`
*   gives the hash of checksum of the file (second part of the flag)

<br>

### Solution

`bash ./challenge.html ; bash ./challenge.html | python3 ./challenge.html`<br>
gives the whole flag
