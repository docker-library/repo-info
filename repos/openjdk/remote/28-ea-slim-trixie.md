## `openjdk:28-ea-slim-trixie`

```console
$ docker pull openjdk@sha256:616d7aacfda7966ea9404efa3e6d3857305d2060cb0dd245cd70daf2a98616d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:4223401c998280fbf9aaf4590042d19e7621ef2d80e46ef06b5b60fd5a3003e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276909962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116f52f56eee188028035ebbab20948f7fc54bcbacb434aeadf1674afa5e3d12`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:43:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 04:43:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:43:22 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:43:22 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 04:43:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 04:43:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a99ebe00ceb4357a258504c2479ce574427df403ade322bcd15a0854431777`  
		Last Modified: Tue, 24 Nov 2026 04:43:43 GMT  
		Size: 2.4 MB (2368576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30030d62fc98bcf6ff85e05a44a5437bc7dc24c5f2131ce4d5b0c0cb5ac26bb1`  
		Last Modified: Tue, 24 Nov 2026 04:43:48 GMT  
		Size: 244.7 MB (244699204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:e73066733b7c748726205ed19b705c06d404a77bda1007c294fee5764d0d8766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0e9cddb12dc7e357dd61c2fa17865b59495c2e8579231a9b756be34c73a5e6`

```dockerfile
```

-	Layers:
	-	`sha256:a97c056814a31b714a3a6dd18e1730e97b92a147589797e720fcda7d123ed696`  
		Last Modified: Tue, 24 Nov 2026 04:43:43 GMT  
		Size: 2.3 MB (2284309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fde7b378353a8f2538a73d2e5f78b7ddc65750e818fc3e3473f0e1324365e11f`  
		Last Modified: Tue, 24 Nov 2026 04:43:43 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b3866d70b70ffabbd4bb1e50756d03001fd9aa6a7080331702a34b1a6e464d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275220451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8740ef6e276275931679d6b115065e55af13e7bee9c222801c43cccd80eeb628`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:47:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 04:47:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:47:37 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:47:37 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 04:47:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 04:47:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd4d3a0f433cc2dd66ed8467ed89e80073ee8e3251aedf36f4bbaacab89d1ab`  
		Last Modified: Tue, 24 Nov 2026 04:48:00 GMT  
		Size: 2.3 MB (2312408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2c012310a892f1d0b768ce43ea3e7eec61befb73fb9619f1dce50d5ca558c0`  
		Last Modified: Tue, 24 Nov 2026 04:48:04 GMT  
		Size: 242.7 MB (242710009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:20053f4bb9a6fbb3e7c13f5fc153c17e6f4edb61cdf6df0f313a918ca5b7cbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5db6bfbd2271b9055d4883ab8b53dbb945f058e27066706ae2108283891e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:763443f1412ddec93c9230346b88249578bd8df1379537265e5a9989248887dd`  
		Last Modified: Tue, 24 Nov 2026 04:48:00 GMT  
		Size: 2.3 MB (2283987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:910032259c306f6f39b6a135cc6890704269931500990e336cbc0c124ef2bd7b`  
		Last Modified: Tue, 24 Nov 2026 04:47:59 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
