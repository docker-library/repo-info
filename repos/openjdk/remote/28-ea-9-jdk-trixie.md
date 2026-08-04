## `openjdk:28-ea-9-jdk-trixie`

```console
$ docker pull openjdk@sha256:6944c205d1f810c7db7cd7428364dada5ca6ca3bfe2d23a4612aa746783408f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-9-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:ef6c2018ad118de97abc5483e819bc710191a7341cb80ec7dbe498ec2202f139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.2 MB (380229174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf4ca4ce6c2071b4e041a757aca9cad0782ad3cd6531dad25e66408e1279c08`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 00:59:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:41 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:41 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:41 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:41 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:41 GMT
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
	-	`sha256:e21acc2912b40893489d1d0dd85004719955aa9a0c669577dd591ce8eac561a8`  
		Last Modified: Tue, 04 Aug 2026 01:00:10 GMT  
		Size: 16.1 MB (16066006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12097339d762f05775767f1a4bfed1a8831e0e141e184ef4972621d0521b3cdd`  
		Last Modified: Tue, 04 Aug 2026 01:00:13 GMT  
		Size: 221.4 MB (221419139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:817ad37eb8f36a82f449562fe821db11e5395a05a3b853d436fce0ef3e52051d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750ad3e8189d315d08175b152407ed9bdae9afe3cc9fb02d9b5764292141a07e`

```dockerfile
```

-	Layers:
	-	`sha256:061ef51d1809b04435d8f8a2ed0c36943e18f0e68206b9fff608eed6fa62b864`  
		Last Modified: Tue, 04 Aug 2026 01:00:10 GMT  
		Size: 8.5 MB (8508977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b26799423a42465d4c0f602bafff90c3abc20c3eafa10243695dfe383b4ba4ac`  
		Last Modified: Tue, 04 Aug 2026 01:00:09 GMT  
		Size: 17.9 KB (17896 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6908748841f5d1e4f0328b3c3b6a83f1d00153d49dd6dd54adbd09e9d741f6ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377858262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3b9fa89bded02aa2ca8e1da9ee89a1e3268b123f22fc41787cf452164b3b3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 00:59:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:22 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:22 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:22 GMT
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
	-	`sha256:6526e806cea8e37e260adb90046903c0d871144c1525b4103ee72b4e4c26e339`  
		Last Modified: Tue, 04 Aug 2026 00:59:48 GMT  
		Size: 16.1 MB (16071482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7a78e6f5cb0520d7cb42b9d5369278c5ba991a36157a4d9c0fab29612cd27`  
		Last Modified: Tue, 04 Aug 2026 00:59:53 GMT  
		Size: 219.5 MB (219490122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:084b52d4a93c6e5289235260f3934b32dd68ef14ce02dbee93c0fb7d30157a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68ffd65c4c4886bbd623bfbdf7ad404a76c98b682dcd34bfd7d04e32785ff49`

```dockerfile
```

-	Layers:
	-	`sha256:47ea769b035c2b86bb55b29fc2ca0764cb986fe01af20bc0a956f893dece6d8a`  
		Last Modified: Tue, 04 Aug 2026 00:59:48 GMT  
		Size: 8.7 MB (8703130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fb3b5c5189bf41fb6cb3cf9d47b9e4cca52812e7d8f0a5a47546f5c0e2d09c7`  
		Last Modified: Tue, 04 Aug 2026 00:59:47 GMT  
		Size: 18.0 KB (18015 bytes)  
		MIME: application/vnd.in-toto+json
