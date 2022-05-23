# m2kar/go

## environment
```
yarn
```
## how to edit
set password
```bash
export GOPASSWD="the password"
```

```bash
openssl enc -aes-256-cbc -d -in index.enc -out index.md  -pbkdf2 -pass env:GOPASSWD
```

Then edit the index.md.

Save and push.
```bash
# generate crypted html
./node_modules/markdown-to-html/bin/github-markdown index.md > index.plain.html ; \
  node ./node_modules/staticrypt/index.js index.plain.html ${GOPASSWD} -o index.html ; \
  openssl enc -aes-256-cbc -in index.md -out index.enc -salt -pbkdf2 -pass env:GOPASSWD ; \
  git add index.enc index.html && git commit -m "edit index.html" && git push
```
