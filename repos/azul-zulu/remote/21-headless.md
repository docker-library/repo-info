## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:01e847ed86fb4cb5a7ad08801d5ae447fe16ab6962a4f53dff03518090c23950
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:31ec0521a3fe349dfca161a04bbb51a3bc0ae72461ef1e5251495f1da1cd48f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192554179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9f9c4556dccb9a4f8aa169e45992eb0a72139476aaa57c535dc1916a34cdcb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:53 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 01:32:53 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:32:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 01:32:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 25 Aug 2026 01:32:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaaee1b0dcc66486d0b6f91a29daeff9a61c0ff74002bd855b1edf61fa00a46`  
		Last Modified: Tue, 25 Aug 2026 01:33:09 GMT  
		Size: 162.8 MB (162761521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4853913294929d5ceef85506d6096a1bdd688d72c42a4d2295e568af380fe073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10aa3d63bd4a3e0e37180c88d0ccd8d973d287e002f2ac2dd7a7c851e9d79e4a`

```dockerfile
```

-	Layers:
	-	`sha256:4093ec46bf60ceb0e7ecf6f97a6d93bad526fb627104bdffa601155b87fb5b0d`  
		Last Modified: Tue, 25 Aug 2026 01:33:05 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:30a21a3fc230dcfe5e73ee681cf10b6b125ae7ee69d862fde27d092903f0eba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192213388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d9f8ca881bb0e0ca67cecf5d2cc7dca7b68ccac062e6302f8b35f394790742`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 25 Aug 2026 00:51:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc536a1990307a376634390897b3d194a74d1f3ed2d51605d1c81bcd046e4360`  
		Last Modified: Tue, 25 Aug 2026 00:51:22 GMT  
		Size: 162.1 MB (162053806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:db966a5adad3d3a0645a2827d4b27076b88b61ba582fb731abf989d5c0eebb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aaa0fd515292dd9c70ecbdd49d7b394c20d130faac05125be38266392258d3`

```dockerfile
```

-	Layers:
	-	`sha256:dc3fa381a37084a6af0c3895733a8848f5480b7ca01f9f6fa22c9d4aab0da15e`  
		Last Modified: Tue, 25 Aug 2026 00:51:19 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
