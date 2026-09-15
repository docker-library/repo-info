## `openjdk:28-ea-bookworm`

```console
$ docker pull openjdk@sha256:a9a2763b732a5103882904f2eb616a8efa8059be1374e55b4900e355ea1b2dda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:784e788660f737fcae357080f471c173388ed1d78ea006af0f7cbb812f24a61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396778613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebcbd402c26b39fc248fdb8de9568da9fb4b41382b4c4aff2dd2a52ebae60f9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:38:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:38:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:38:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:24 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:24 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:24 GMT
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
	-	`sha256:b5f50e6a88c55dee985e9078059ae2becf478ca118dd3310fb85ab1423e8079d`  
		Last Modified: Tue, 15 Sep 2026 21:38:51 GMT  
		Size: 16.9 MB (16949335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82972878ecd725cec3c1dd5c026e100fb85a25b46a6180b1dde3eccf9a5478f`  
		Last Modified: Tue, 15 Sep 2026 21:38:57 GMT  
		Size: 242.9 MB (242862604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:1e56284f148ae9452da7a88d58cdf8c535e25bca33a53faeca42eab7d87bab94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5ca1b77ddd1e5bad12616439c34352b4754dcb59daa717ef8fc4fbc7c48cb4`

```dockerfile
```

-	Layers:
	-	`sha256:9cba5e18dd5de867d401765c94491cff38a55c62e5b0390924bf47025f60cb19`  
		Last Modified: Tue, 15 Sep 2026 21:38:51 GMT  
		Size: 8.7 MB (8674879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae45168e6d74f0862ba21ce806aaf6e2dfe1c865bcda0b46b8c7a96be2ef2a03`  
		Last Modified: Tue, 15 Sep 2026 21:38:50 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8b8eedf28b652eadd21f1d6d66bc7adb0dfb967736e8223944a503c248114420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395169068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1223dcd299215697e25bbb761d1ba901784e7924224e6b17e30f3b72c7244e39`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:44:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:44:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:44:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:30 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:30 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:30 GMT
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
	-	`sha256:d63ac8c1a72246499e7cac4a9d4b8e0493976c3f727278ccd357c7c5d0198418`  
		Last Modified: Tue, 15 Sep 2026 21:44:59 GMT  
		Size: 17.7 MB (17733607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83297e9aff71d62486f00ee9d71954ff8aaab1031df4e2d10d93d946b8cb6d32`  
		Last Modified: Tue, 15 Sep 2026 21:45:03 GMT  
		Size: 240.9 MB (240922974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:5074b21bf65cb43a19a57885190f7a20c2d757bdbe34aa17b5fad017817bcf3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88e03d7bcea4d3875f7b6d6ef628d5f8e9280a83d35034109845c61bd5d2e88`

```dockerfile
```

-	Layers:
	-	`sha256:64630b6494c9d553f66dd7a74d7a5a7723e1826bd170ec541b1abcd891d771f6`  
		Last Modified: Tue, 15 Sep 2026 21:44:59 GMT  
		Size: 8.8 MB (8811724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:692598b0bfbe854c15ccf19ef355b3b8b4353bb5d42685a77c91abcae749dfd1`  
		Last Modified: Tue, 15 Sep 2026 21:44:58 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
