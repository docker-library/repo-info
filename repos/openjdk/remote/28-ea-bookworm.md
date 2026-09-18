## `openjdk:28-ea-bookworm`

```console
$ docker pull openjdk@sha256:c2550e3aa40dc265a269321330d81e3286dcb360304f7597c24cb8f397a53c59
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:2f23a24c97cd63bc954a9b1dc4265b348a63a2b4c2ecde27ea2d170a86a0f40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396944475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89a4b86ae35e9da5bd454834d4479023fb0cc7b0ea9bc9422fda9765cfcfeb6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:36 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:36 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:36 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:36 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:36 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0054cc4ffacfe4927618e677ce4df823bb49a143acb41493ac6757326e630168`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 17.1 MB (17080116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11d2d8b972901dba2b4e1a67ae8e0c427b8fd5eb396fbedd8f80c334ccad1d8`  
		Last Modified: Fri, 18 Sep 2026 22:30:08 GMT  
		Size: 242.9 MB (242897685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:7ce9906c46ccfe13d2d4b7ff5ccbe2e73d707dcef19aa5986de6f393f6e206ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b8321c019f0077a150efc4425d4bc7888ee2105130fd5050262c4b4c2379eb`

```dockerfile
```

-	Layers:
	-	`sha256:54222098a5f9c2f927e4db5b173ad1618c0c3aebb246135def62facb112a8f2f`  
		Last Modified: Fri, 18 Sep 2026 22:30:03 GMT  
		Size: 8.7 MB (8674879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29883a7aed3672d6aee402b0b49b923582d337c17117fe756957c11bd37c27e6`  
		Last Modified: Fri, 18 Sep 2026 22:30:03 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:9b1af90b721f90bd84038582a8dd52c62847d5768c74e387381fd967fcf1bd38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395319940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f807c8ad0e0be24c5c5932f0f110ca408e25e0092e65a362b24f9a282e72270`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:44 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:44 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:44 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:44 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:44 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97431e01c84fd8b6cf6f9a02ccea20efdb0405596527f1a85f9a30e874917a9b`  
		Last Modified: Fri, 18 Sep 2026 22:30:13 GMT  
		Size: 17.9 MB (17864657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51d93462665deeea38d5c88110fc375763be196565a1132cd0323e1fe334f7`  
		Last Modified: Fri, 18 Sep 2026 22:30:17 GMT  
		Size: 240.9 MB (240942796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:696a3db6c15d3121907d02930afddbd2ef9145d5e52e92af9451fb90f3dfde67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec6d99793fa3dce5c79db272ecc24ff0a3a2ff1240f94e4466ba702d1f4e9cd`

```dockerfile
```

-	Layers:
	-	`sha256:73336fb7f78c579ec02b2443ab774508791533d3aed0eac1d4adca9d87c8b911`  
		Last Modified: Fri, 18 Sep 2026 22:30:13 GMT  
		Size: 8.8 MB (8811724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed776de8e5c38e18365cea2a32f4efb8d79dea2ebdd0ad4add7fa47af4b8dd41`  
		Last Modified: Fri, 18 Sep 2026 22:30:12 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
