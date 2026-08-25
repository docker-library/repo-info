## `openjdk:28-ea-12-bookworm`

```console
$ docker pull openjdk@sha256:87c362a60232f025af9c630e6592667779cee1cee9d6522b14b0fabb048e2bbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-12-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:5f28c03d85c31a6dcbc24c049f1020fc3855351ce25e94caf3459e9d0651d5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.6 MB (396559580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c65d9e5f1d9b965458c403cfed3d8b689b13303dd9e765f81ec6cbacf6a21ab`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 18:00:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 18:00:44 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 18:00:44 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 18:00:44 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 18:00:44 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:00:44 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 18:00:44 GMT
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
	-	`sha256:71c5865bccb69f97e24ad8bcf96587701d2533c0f6db37e676778a4c1da76904`  
		Last Modified: Tue, 25 Aug 2026 18:01:09 GMT  
		Size: 16.9 MB (16949405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7de849a6c7f35a91cf61f236027081c5dd5d965afbf9a06cb7cdc12fe64fe0`  
		Last Modified: Tue, 25 Aug 2026 18:01:14 GMT  
		Size: 242.6 MB (242643501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ae26c9c038148d337387a131ef7b4cc34073a88e6d5a5a2a2eca1c165459be9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21c67c24422da53d61ef647f161a6e8557bdb3864bee04085f77a05531ebb77`

```dockerfile
```

-	Layers:
	-	`sha256:98879c4d821beeed81f97badf7e24b8ac7178156e2a95f31b7f1842fc34cf2d1`  
		Last Modified: Tue, 25 Aug 2026 18:01:08 GMT  
		Size: 8.7 MB (8674241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59428b72ce8a598b6b675a1a36304188db33f659cc997893d13a1550278fef1f`  
		Last Modified: Tue, 25 Aug 2026 18:01:09 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-12-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2bc972b71d8bb3b899da8df781007f94d8123f7b2fd72c0f1b9169c144791905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (394975076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c452d4ae443c16b476037d845365c8ff7a4a1e0795f801456d1fe8864ade3d59`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:57:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:57:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 17:57:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:19 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:19 GMT
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
	-	`sha256:bb136466f1fd0b6ce4953a2923ecb1629522b3f9e196c5cc7f75dbdf388ca583`  
		Last Modified: Tue, 25 Aug 2026 17:57:49 GMT  
		Size: 17.7 MB (17733592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a358b9930fb80e26bcb925f71741d2f2697e71ca68f2aeefa3f4c11788831d80`  
		Last Modified: Tue, 25 Aug 2026 17:57:53 GMT  
		Size: 240.7 MB (240728997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:6ad1029ac440d5f11981586a9990e564185059c0a0e8302b392f43ae2f862143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbd105ac917a0dde0ea1d2cd8ad81bff735877aff73196105b60b6bb52c7924`

```dockerfile
```

-	Layers:
	-	`sha256:bf8356587ace81a870158cf971562700df90934e23cec888199318783d2ab016`  
		Last Modified: Tue, 25 Aug 2026 17:57:48 GMT  
		Size: 8.8 MB (8811086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f6fd25ecbeb1986533de15d6e368045d6a6ce8b68c20844ba5bfb35ebb35e2`  
		Last Modified: Tue, 25 Aug 2026 17:57:48 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
