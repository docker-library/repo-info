## `azul-zulu:26-headless-debian13`

```console
$ docker pull azul-zulu@sha256:884989a14c1ee266b0cc405469b3e0f5823b0bc6586bb44bce19805cdb0a60b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4b749eb8fd71afffb1c2d16ffd4229dd33259c92f011a85bd75a00049f0b9950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215102789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686ee95d21bfdb389fa092c1a906bc2a190cd3e660a2cbb38f8444a05d88b0bb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 25 Aug 2026 00:50:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d732e934a1aa75ba7c87f6aff688642f42f1b46d4b1e4de2dde850182e548bc`  
		Last Modified: Tue, 25 Aug 2026 00:50:44 GMT  
		Size: 185.3 MB (185310131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b1be27377e5675c3985e45da5be014d9757d9f3a50773fc920f6ed5e00af63a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8dd8534833cf719665b6c03163d8cfcbd3d7dc7680aaa8ed1346deaa877718`

```dockerfile
```

-	Layers:
	-	`sha256:834e0077cab8868444063fe333b9b75f63626ac6190f86437b65437b53795500`  
		Last Modified: Tue, 25 Aug 2026 00:50:40 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3ada10a0ab813e5f1131f5698f50b401a19e10f1e32bc478babd3fe48d272ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215184172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b1c47d36e03ec427c3620df5258e2addce2627bbbc42b87bb0b90101c6ba96a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:25 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:52:25 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 25 Aug 2026 00:52:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52f5301edecf781249cfa6553f99cbc324ea1b188b7c2162724faa559bd47c2`  
		Last Modified: Tue, 25 Aug 2026 00:52:45 GMT  
		Size: 185.0 MB (185024590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8ccc4677b8eecc4d840226d7a492272a23bd638444d19b8750faee3d9b852e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b192a0409fed2dbff74a2029c328eb11da42b3338428eff3b7dcad6d1a8a48c7`

```dockerfile
```

-	Layers:
	-	`sha256:a6a70a0a0037e01e149a375de91fe2eee619eb38e878369fb28ed0b900984cf1`  
		Last Modified: Tue, 25 Aug 2026 00:52:41 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
