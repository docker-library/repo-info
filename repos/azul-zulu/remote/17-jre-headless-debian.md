## `azul-zulu:17-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:0063aa18aab710de9d307daedcf511386f059fc2dfcc7eabbae624df1ac50742
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:563dcdd096b9d3fea1b1a3aecaea70764aab591a2163058a74fe8c5e94e11bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99309827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd3e688f708716c756dd3ac0e784a2f1036f5f4ae4b55b43a0fd4ffd0bbe52a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:25 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:41:25 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:41:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:41:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81064946c48572d9f57f5cb4ef4f9e52f61249b876e8d59da548199c1c262a7e`  
		Last Modified: Tue, 14 Jul 2026 01:41:37 GMT  
		Size: 69.5 MB (69528922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3eac400970cbd6a23a0fa1e714fdfbe32391efac8cd576d2e964a416ea9b01b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89834f232aae89c35e1ea86075113b08a2d09e60a4155e3236dd7b20bfcde127`

```dockerfile
```

-	Layers:
	-	`sha256:2bf6a85706990cd73637acc92b679467cf65fbd3e721d13a072129139c92bf68`  
		Last Modified: Tue, 14 Jul 2026 01:41:35 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:77dcc5d82c0dbad0c8465acd659fc044671383f110db28b7895b1192780d72cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99728331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53d89bc2257ddcbd4b072a7dad2240086c9427fd488cf5b9b0b7d783cb9ff10`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:46 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:44:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:44:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e82ea0bf83cfbc9f64e2c7f366077f196331c3b34c69bf2287b8e734b710e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 69.6 MB (69584626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e6145a705f3b082858b2e951c93c9f798f6708bd5ab3d82f8b8e0fc99b1420c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873e0545e2e3b925ceecc33cbaca2abfd37ba998947761aa5475179395fba41`

```dockerfile
```

-	Layers:
	-	`sha256:760497ac62c888990a3240cff43ac611cea902f884527456860fffc66079603d`  
		Last Modified: Tue, 14 Jul 2026 01:44:56 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
