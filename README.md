# m2kar/go

## environment
```
yarn
```
## how to edit

```bash
openssl enc -aes-256-cbc -d -in index.enc -out index.md  -pbkdf2 -pass env:GOPASSWD
GOPASSWD="the password" ./decrypt.sh
```

Then edit the index.md.

Save and push.
```bash
# generate crypted html
GOPASSWD="the password" ./saveAndPush.sh
```
