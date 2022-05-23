# m2kar/go

## environment
```
yarn
```
## how to edit

```bash
openssl enc -aes-256-cbc -d -in index.enc -out index.md
# input password
```

Then edit the index.md.

Save and push.
```bash
# generate crypted html
./node_modules/markdown-to-html/bin/github-markdown index.md > index.plain.html 
node ./node_modules/staticrypt/index.js index.plain.html ${THEPASSWORD} -o index.html

openssl enc -aes-256-cbc -in index.md -out index.enc
# input password

# push
git add index.enc index.html
git commit -m "edit index.html"
git push
```
