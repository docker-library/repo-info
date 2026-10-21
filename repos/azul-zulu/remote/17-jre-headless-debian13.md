## `azul-zulu:17-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:0dfea03c8f2a42cfe238ee9a9949fcb450cfffa6de3fc67584ed4269aa757000
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5db26382bc77a8fc15533fad9258816a1e8627a2b84ad3228becdcf798b41f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98892499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91369ab276c15a5ff6d3d5097edd5481d68fa763d8c6a03ab2976d202377a207`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:43:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:43:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9268b5db991719f52697ee6189296b1f9187c7be1226ddea7a0efb4ab14ea6e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 69.0 MB (69048920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a11a66e79836908251c597bbcbf1f103c7870d425a193b502523ab86a262b5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e72b9fef88db02b9427aeca61df7b0e7672b1763c86c6bf992835885d805de`

```dockerfile
```

-	Layers:
	-	`sha256:81ca9cb3838efbaa2e98fc58611be8c020b6aca406c83db50e8130348dfa9b07`  
		Last Modified: Wed, 21 Oct 2026 00:43:49 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:951e611f29cf130f99d3ac073f6625c39063ff76e9b14cd2344b53a652c09646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99296602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f889b8dd8b3767e86408037d15a01ba4e8b6d6cf604e3de90cd3a8bf884f6cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:47:09 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:47:09 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:47:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:47:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675351af0d7836cef32f3472ddfb42881e76af37af2ae687a38ea9339d6110b0`  
		Last Modified: Wed, 21 Oct 2026 00:47:22 GMT  
		Size: 69.1 MB (69096124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b9d55dd933fce3472694238c932777fbe7226094cca0360251180711cab876d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e084742704ddb92083742addb465fcc772a2a355a03b9ae2fc2454da7b5788d`

```dockerfile
```

-	Layers:
	-	`sha256:8f67dbb80eaf53c843d0a15bb4c873c89d9d2ec28f972d4e25a431bee28e1be1`  
		Last Modified: Wed, 21 Oct 2026 00:47:20 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
