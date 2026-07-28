## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:bcbc1948ba001c2179fefd543c26d2d4841222ac503a5657d775473b44a49a52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:2f7bf159449d8eb564d1df676f1636f0411f3e536bc001ebbc5371074d124102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.5 MB (386460206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74140bdcade74c5e9da41b8b3c62a30dcaacda687152893bae2c4c928ddcbe3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 27 Jul 2026 22:08:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:07 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:07 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:07 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f9d10dc0fe05b165a4512e4454d36ad0c6a6e7748ab7c4428594c257fac6f2`  
		Last Modified: Mon, 27 Jul 2026 22:09:30 GMT  
		Size: 16.1 MB (16066084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ae036bcd3ec6d7d86f366954ce8dd1f168e5bb2f58aa2e80e319cdda7a7697`  
		Last Modified: Mon, 27 Jul 2026 22:09:34 GMT  
		Size: 227.7 MB (227650093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:97682e447992b1dae319b35345a9b10e6c853e28503c7ac672755de49f0b367b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f11d13b6257eefc1dbf2c82e2f069e6d6952d884e3a2d3bab33c342c02bb6a1`

```dockerfile
```

-	Layers:
	-	`sha256:6cb94ad62cd65f221af9f9e47fe5b0e76111aa7664debf9415ffc7dbb8267052`  
		Last Modified: Mon, 27 Jul 2026 22:09:30 GMT  
		Size: 8.5 MB (8508977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1871b4622b841284ad3509f28fee596de3bd2ce231dbccf53dc0a5a6f485118b`  
		Last Modified: Mon, 27 Jul 2026 22:09:29 GMT  
		Size: 17.9 KB (17896 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:76a3f56e78214c32c592140092f8a9f25ac6bce7c8db6c7fdd26dc71b38e8965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.1 MB (384077835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dd541e4b205310c211cf25c9c4330252ae8f9dbe905da662f7af03b2dc1b00`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 27 Jul 2026 22:09:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:18 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:18 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:18 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3abc31f2e0ded3dc675eef553041e69cb661c6cece2aaf15e2c78630091523`  
		Last Modified: Mon, 27 Jul 2026 22:09:42 GMT  
		Size: 16.1 MB (16071468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa38037d44cffe2484ebee138840ab024b3a40064c5fe99310b49188cdc92f8b`  
		Last Modified: Mon, 27 Jul 2026 22:09:46 GMT  
		Size: 225.7 MB (225709709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:3c15915fb4d51abccb13eb7503ac2b8393ef9e9eba1305e812cc062f0f5a7512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5a586d5e6dd0d13155aceccb9c645c7915bbff7b266ed1f0d6d28004dfce0e`

```dockerfile
```

-	Layers:
	-	`sha256:533b3a7c1bc7c68a56891245a9e9ea356ef42b6cf25e5a889ffb74aafe292c97`  
		Last Modified: Mon, 27 Jul 2026 22:09:42 GMT  
		Size: 8.7 MB (8703130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5358846105c14342ef5d1af4ffe686a182c6f21808c9c07a59abe2746ae4cecb`  
		Last Modified: Mon, 27 Jul 2026 22:09:41 GMT  
		Size: 18.0 KB (18015 bytes)  
		MIME: application/vnd.in-toto+json
