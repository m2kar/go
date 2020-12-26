# 远方归来的游子，连接到实验室服务器
【本页地址】: https://m2kar.cn/go
## 连接命令
### 连接实验室服务器
```bash
ssh -vNC -L 13389:192.168.7.215:3389 -p 5022 -i id_go zhiqing@isrc.iscas.ac.cn
```
### 连接到主机
```
rdp://localhost:13389
```
## Tools
### Mac, Linux

使用自带的SSH.

需要下载RDP支持。

### Windows
 下载Git Bash。

- 【官方】：https://git-scm.com/downloads
- 【镜像】：https://npm.taobao.org/mirrors/git-for-windows/

下载最新版的`PortableGit`

## 密钥

外部使用专用密钥，使用了PassPhrase加密。

### `id_go`

```raw
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABBuZkIT1i
uLxu/joZNQBfVDAAAAEAAAAAEAAABoAAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlz
dHAyNTYAAABBBKh3yyMhc2/6bO0ndoqYYLSsRRpEMT0j5GbWmET8zaygjX53kLI1yQam0Y
9VEAdVOD/YmagL3VDbe+/IuxPFV18AAACw3qBq27uUqQDjjW49H4Nr2SLTMttPvlsz+uZw
JQbcgGJbf4vWiuUGFMVle1Op+C+v9jzFRpSWuTdOiOS/BxpHnV2BFxskvCk+h3BOmJf/H2
W5yz/7prrTp3g8ffuXTBkkp83BdvMFDx9wlYbhOtfN1xK4NfaE+STBGC2O4t6zCswh385a
5j4/Ctdi7lnX+nYzTtXxl4USmfAgEuqxa0O7omPjwQpg1sNK/0RpAnlyMI4=
-----END OPENSSH PRIVATE KEY-----
```

### `id_go.pub`
```raw
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBKh3yyMhc2/6bO0ndoqYYLSsRRpEMT0j5GbWmET8zaygjX53kLI1yQam0Y9VEAdVOD/YmagL3VDbe+/IuxPFV18= zhiqing@go
```
