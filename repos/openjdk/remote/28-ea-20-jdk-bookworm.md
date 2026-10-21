## `openjdk:28-ea-20-jdk-bookworm`

```console
$ docker pull openjdk@sha256:72ff4476682b90c136b42482e4abc3fc93dcc67c4a3ef21cb3556e85fbe62299
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:c85dda86b5910416fe892bf94e2e06553282df6e45a84b08255ed56df777c53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.7 MB (396720148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14e268cd3587afcf7e24ec4fa8d4c6ecbba91b2fd05ff5222dc0119e84c6f44`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 02:17:49 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:17:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 02:17:49 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 02:17:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0959ba39613fdd89ed3679cb0483740e954fcc9d3e68d882e6f27130ac124e0`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 64.4 MB (64429299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b083260f159f4f9025a7773da09380519ece2252ce730582b2acdb5e78dcbd0c`  
		Last Modified: Wed, 21 Oct 2026 02:18:14 GMT  
		Size: 16.9 MB (16949971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ab783dc94a3b6fe02e552bde712e5df57a511ba4fa91f02645c5f077b41117`  
		Last Modified: Wed, 21 Oct 2026 02:18:19 GMT  
		Size: 242.9 MB (242947058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:198df33997a44f05b304ba19906600d1a1a6258393980fda5475d795633ab8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8690784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6607d877c112dfe62550789d10f39f87476bcae369dc3eca2dee917e315a56f5`

```dockerfile
```

-	Layers:
	-	`sha256:a5eeb3da86f118ca30fdf31c0127b25404fcf6f8c2bf429faf06a1dfeed80ad3`  
		Last Modified: Wed, 21 Oct 2026 02:18:14 GMT  
		Size: 8.7 MB (8672845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fdddc963fca75d77010f3d9d273cc887aa5d4cd2b8ff8a96209353c08562b07`  
		Last Modified: Wed, 21 Oct 2026 02:18:13 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a2fc41b40d3d814d84f6dd2985fb5d81024a89b14fb286d19958e40bb92eb152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395092273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f542c8c8c55483035e7e15dc65595b272fcdc264fe01f3b63fb99ec32abe8038`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 02:17:38 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:17:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 02:17:38 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 02:17:38 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f500343e7e2dfb125dab0e3da0151614ed4139d23d4e7b5b214a9b5bfccc0`  
		Last Modified: Wed, 21 Oct 2026 01:34:11 GMT  
		Size: 64.5 MB (64523759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fc50d276a4bf9a22279fcb71304c1aa9b87f266bd884fea8f900a9cfd2c5b7`  
		Last Modified: Wed, 21 Oct 2026 02:18:07 GMT  
		Size: 17.7 MB (17734058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba91ea24a4da9a7f0122843315329e9a5775cc50fc15b02ac19c2dcfece011f`  
		Last Modified: Wed, 21 Oct 2026 02:18:12 GMT  
		Size: 241.0 MB (240992417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:611fc582e43d20186dbf6965067af8a3c1dc3b44d8c8e17fc6fd71337685b9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8827748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0436d2d3057a0eb7bb2daeb2bd2f9e404c6996d3cfc8fa4c88dd892b91318614`

```dockerfile
```

-	Layers:
	-	`sha256:d23b7e437d17e3d67944619422377da15200811264dbf2108cab560b6803e386`  
		Last Modified: Wed, 21 Oct 2026 02:18:07 GMT  
		Size: 8.8 MB (8809690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63e2f40dce54166c555c6dc9fbc7a3ad5324284b2c760f7318ac92ffba912589`  
		Last Modified: Wed, 21 Oct 2026 02:18:06 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
