# Flask - Unsecure session

<img alt="chall" src="https://github.com/user-attachments/assets/6175ad33-09e5-4cc5-afa7-8851d44b5bcd" />

<br>

A classic challlenge rounded with the cookie. While checking for souce code, I could't find any interesting or any hints. So, I firedup my burp and started looking for the request and response.
While checking the cookie section. I found something like this.

<br>

<img alt="burp" src="https://github.com/user-attachments/assets/0b3032d5-4d36-4f9f-9bf0-fb5195a9d819" />

John was not working as expected while I try to crack the hash, 
After researching sometime, I got to know the website https://tldr.inbrowser.app/pages/common/flask-unsign 

```bash
~> flask-unsign -d -c "eyJhZG1pbiI6ImZhbHNlIiwidXNlcm5hbWUiOiJndWVzdCJ9.aYgyGQ.ZiLTB3KZn02y_LsCp0MIDMPlqBY"   
{'admin': 'false', 'username': 'guest'}
```

As I don't know the secret, I couldn't modify the cookie, So I cracked it using the `flask-unsign` tool & made a new key with `'{"admin":"true","username":"admin"}'`. 

<img  alt="key cracks" src="https://github.com/user-attachments/assets/6164eb04-119f-4ab1-ae06-949538580ba1" />

This gave me the Flag.

<img alt="flag" src="https://github.com/user-attachments/assets/d25991ee-0e40-4cab-b2b2-b874b2ba02c8" />


<hr>
