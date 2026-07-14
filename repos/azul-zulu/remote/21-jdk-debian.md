## `azul-zulu:21-jdk-debian`

```console
$ docker pull azul-zulu@sha256:1f4f888921e8df98fa49e4c3b7dc50bb5aa550306ea3a532617f134ef5d32812
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:85c89aebfeeca6b2e37a6e987237a12172a08ddc76a9d867765174c52c1e0a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195876368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56df6449230bd810e0bf5a60c22ad80e0b6ced691466bf50f45fc8dfd3dd35b7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:06 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 14 Jul 2026 01:42:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a853dee37706f95f6fe989c9264a8125203b362f1877c9918daea84a2340b5`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 166.1 MB (166095463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f097b4b5a3b885a0045dfc8ae755233c29ba1193d0d09ba8fa8b21b7bc3b11d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a84c415469e37f2686b7c7c3ad6751c1647ad20e41f2c76507c295a866d9143`

```dockerfile
```

-	Layers:
	-	`sha256:113a898432a5994df96df85a1d3e97cf35f58f043f6260986c0d0dd201261fbb`  
		Last Modified: Tue, 14 Jul 2026 01:42:19 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:da18b6a3b83fbab5c78daf121aa342a9c0320c418f9e319969215302a97c3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195543653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae14c64905073e87a27e11f128c136c90fb4df797b83b1235a2b7c2f07c260d1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:05 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 14 Jul 2026 01:45:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469dbe394a098977aff89e84185b2b40f801694b37cf9ee8cce4ce7d7040640a`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 165.4 MB (165399948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2c6da4bad7cf4ff6aa140fcc2fd0e66fc2186631fc4f1192917348a7fd1221fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02484a6803dfd18ae6e3b97fe6aece0e470b64f26923dd8e4b565fa03de47a65`

```dockerfile
```

-	Layers:
	-	`sha256:6eb4ef4d07995cfa8529422fb20b0d5814bf52a0823d72104a786052d821bb9b`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
