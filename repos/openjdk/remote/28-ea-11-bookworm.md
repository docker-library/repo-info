## `openjdk:28-ea-11-bookworm`

```console
$ docker pull openjdk@sha256:b1d33509b0c7153591cb2569f3260ede2e70d6ca83a57f65a4ecce94574f04ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-11-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:47d29ea1ff94bf4291d4bbcf2d6ffa3f7555cedae0a1d0a357743d00205aef4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396840489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2bf6bda30dbb58262cf12f1e129ba532d859c544cd97c6bc7da17d4190f8aed`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:55 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:58:55 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:55 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:55 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:55 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17504e8013e23a57d60dcbc972c6f83433780d517f688c2fc8c01db4500aa3a`  
		Last Modified: Fri, 14 Aug 2026 17:59:23 GMT  
		Size: 17.3 MB (17250399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a5dc15f6b0720d3e1ddf19da1e857d383171e0322d2e561ec5bbeb4071e85c`  
		Last Modified: Fri, 14 Aug 2026 17:59:27 GMT  
		Size: 242.6 MB (242640593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:f862c6911dbe36771d4ea5ff59f79352fe9ab077ae2a7ea8390ece685a087c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8c987d8fb21bf6b5e85a325bf06386be334afea99d7d29f343373395d6cd3a`

```dockerfile
```

-	Layers:
	-	`sha256:d9ee379fe847f9ecb4b4801c8bf24ef05795a8f7860bb42d28429386bd971874`  
		Last Modified: Fri, 14 Aug 2026 17:59:23 GMT  
		Size: 8.7 MB (8674187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79c8b16e21a4d15bc3c87758eb9797cda925849fd9524a206e307bc3cbf8400`  
		Last Modified: Fri, 14 Aug 2026 17:59:22 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a95aede9a5e021cd98c30030d3367803fd0dc1fa2d13c08d9e328f23ebd40732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395262417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953e7532968ffb5f49e9d690a9db0ea24b26d5e423af76924962ff91ca80b342`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:58:47 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:47 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:47 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b72651ddcacc3665444f04fe05f981b6f3821ced48599fa33210665269eb1a`  
		Last Modified: Fri, 14 Aug 2026 17:59:16 GMT  
		Size: 18.0 MB (18036053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a15794e9546413858aff0cbab140edb3458bace9d91bde4419398c14157b604`  
		Last Modified: Fri, 14 Aug 2026 17:59:20 GMT  
		Size: 240.7 MB (240732148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:2aae70cff44aa10acb50656a802324668f7c6604cd554da4963a69f042f31e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c33a495a09ebb834542e8953dc446cdfecb8c6243b37e7c0b32f5596fb469b1`

```dockerfile
```

-	Layers:
	-	`sha256:a8611222be76892419cd6355837d3d879d1d30fac5f3e964c6c0bde6973e11a0`  
		Last Modified: Fri, 14 Aug 2026 17:59:15 GMT  
		Size: 8.8 MB (8811032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aed38b2cf9592f91084cfafcc05e140ba9becba7eb472103627e64c077b64a90`  
		Last Modified: Fri, 14 Aug 2026 17:59:15 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
