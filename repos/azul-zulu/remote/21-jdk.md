## `azul-zulu:21-jdk`

```console
$ docker pull azul-zulu@sha256:2e230d906cffcc7bb7360ce82836f2ff0e0be74a1d5ebaf929e4e6ac99d61bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:61ecd77fe00d21ce092d7dbf56f4d0632558d0c019b246c0470dc1061beba632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194828955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b11d090b83205187294b6ad1626fec043a512906f3ff19879a92f96d2e952e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:25 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:25 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 25 Aug 2026 00:49:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a154c00356c5cedd84334fe7645213838e9cfe6fc2bfd7ac9a6b6c492aa304`  
		Last Modified: Tue, 25 Aug 2026 00:49:41 GMT  
		Size: 165.0 MB (165036297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1e164afe3a54ea2a465719076c894b413fc0421955cb6ab7ca1302026982e317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a11ffd878950bc6ec6fb0695477487ae134e17d8803be6e3c2b2dc4cc8a575b`

```dockerfile
```

-	Layers:
	-	`sha256:e2cbd8417ad9ff4a9f8ada892d498a83a7b0de5857c9b1a3acfc90a1994ca91d`  
		Last Modified: Tue, 25 Aug 2026 00:49:37 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2fbc75466e89ef80bc40baea28856211a7964321f0789e5da7efc7124953c82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194476762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0411b805d6651c6912dc53294a656ed65b0c72fcbcc3491f5e992d43bebab96e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:07 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 25 Aug 2026 00:51:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c30dec6c9de4fafc6616787c7ec686fea13b0fba45097c7c2ff4cb998c3bc9e`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 164.3 MB (164317180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5d9a7ee0ae88325e83d09f9454aa1fabc841a0efd6b604c2ced198bc806e09ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e97ed1a1e576a75b021f3d281151d5e418cee587e16c14f8aa2165b9051b533`

```dockerfile
```

-	Layers:
	-	`sha256:3fecd467b114ba5125817b6088012fba250027241254eac8e5b22907917d3202`  
		Last Modified: Tue, 25 Aug 2026 00:51:21 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
