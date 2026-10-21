## `azul-zulu:11-headless-debian13`

```console
$ docker pull azul-zulu@sha256:f18c05fd1b5693f3cb88fbf1517197e2c694e6c40bc1535e5abbedc0f09e5275
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3b44447e4c4db18fb158415a358adfe5c7d1bbea57e7cd28ad98bfe710d60b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175047230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd6e7920046b9b25614444d2c49e680dec2c9ac8d40911d9c5a354420b4261b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:42:27 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:42:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:42:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 00:42:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74681af538e9d5558c4bdfdbdc749118d86cced67416d52cdde94833707acb2`  
		Last Modified: Wed, 21 Oct 2026 00:42:41 GMT  
		Size: 145.2 MB (145203651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:af34e144d324a5c9deec928a8f05639c55e48b975d4ed74bedbeb035bd51834a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca85a871473504d50e3ef19c06529558654f33869c734167d03837c97b86f5c6`

```dockerfile
```

-	Layers:
	-	`sha256:9b77ce6a432fbfa1534502a89ed92360e6e241936eb228a7801b1318d216a7b4`  
		Last Modified: Wed, 21 Oct 2026 00:42:38 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:aaeba248ef456c15d992cecefd230c65ce2f3408b337e3ca780ff6fa13edce19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175093202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b567693bb2efd2699c748aba79343b73e12cc41310fc15c2d6811e3df5905dc4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 00:45:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92442cde193c60cbdc54da73460fb6ed749fe0079e0db646d9f1563c4957913`  
		Last Modified: Wed, 21 Oct 2026 00:45:55 GMT  
		Size: 144.9 MB (144892724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5a6ec09a520c717aa56f043b3eaa3c6b46592f211f07cac145cb980eee29bd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6836d69a61b7cd8df7912a5d282a4c4f819bd2620d21fa9a88d416f5e8b51f1`

```dockerfile
```

-	Layers:
	-	`sha256:04641740dd1150f8fd9b70f9f63da3856faf0a935c94b6a6877d1797ff9c3d7e`  
		Last Modified: Wed, 21 Oct 2026 00:45:51 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
