## `azul-zulu:27-jdk-debian`

```console
$ docker pull azul-zulu@sha256:a94bef9da12e24efeb667ae6d880a0814486c747f810b317bd69856592c2428b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e3ea2b233c0d2c0510976d3f7ff241baca492f70d8b88b477ee91f1e2a71dd6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.3 MB (215347242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef6da920953413b16bd16b617062930453db6b132ac9b56a233f8c2ee0bbd57`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:27 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:27 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Sat, 19 Sep 2026 00:44:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3664fa255fe96f9450ef0e29e2d698c09e9a4afb615fdfdb297c8a57c9117d5`  
		Last Modified: Sat, 19 Sep 2026 00:44:45 GMT  
		Size: 185.5 MB (185516824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4c0016c1797fdaaa29d37a5a07eadc77c16ecc1726924ad0515081c6c37392ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80492bd3c025ce52f05bb78f49091412e043d87928f215b6b5cc8482996f1fa1`

```dockerfile
```

-	Layers:
	-	`sha256:1e88ca1328010ead4f5887b99f9460347763ef80e3b4cce24d8df0bead1f6e73`  
		Last Modified: Sat, 19 Sep 2026 00:44:41 GMT  
		Size: 9.5 KB (9492 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bd5504185073055c6f3d9e7166db1de859220e14e04c65780e76a5f3a6802305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215362218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513d38dbfcb6596e20d922bb78f3fc5c6769ed31e3f237f5d7836e07b1588431`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:59 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:59 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Sat, 19 Sep 2026 00:46:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00266a344ed209cb829fb5ddb1133f960830643050276e010e748d562298aea`  
		Last Modified: Sat, 19 Sep 2026 00:47:18 GMT  
		Size: 185.2 MB (185172527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7744b2dceacffe1e52070f01c57b61e56d43d75359c051e23107f4f73f03f7fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86b4f7f428808288077605a727eaae748dad3b34aa5ff89025c531b74a5655e`

```dockerfile
```

-	Layers:
	-	`sha256:8d1de615f5dd0f19b19ac8252460f85d0bb4d8e1c447bd0276c57343e275e55c`  
		Last Modified: Sat, 19 Sep 2026 00:47:14 GMT  
		Size: 9.6 KB (9608 bytes)  
		MIME: application/vnd.in-toto+json
