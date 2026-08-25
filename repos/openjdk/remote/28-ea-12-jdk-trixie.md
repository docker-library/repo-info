## `openjdk:28-ea-12-jdk-trixie`

```console
$ docker pull openjdk@sha256:f5dc3120c11fd6ec85b91fe5a267d6358faaf32653aedb5ef3dc03dbdfaa307a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-12-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:d011c795e04c88ea13750b71ef6c9e573124fc0a1a48b5c64f6b4382ad3df2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401488221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf89d01a48220cd13148556a94abeac8604a05c8c40aa409d3ad3d73da71ccac`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 17:59:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:59:33 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 17:59:33 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:59:33 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:59:33 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:59:33 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:59:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8856c5e8844016902e20c2a8f26d691c92f2e55887f0dd78e4919dc79804a82`  
		Last Modified: Tue, 25 Aug 2026 17:59:59 GMT  
		Size: 16.1 MB (16067289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7130798d75f077d3dbba7c26085dfa8b39e00b97e1ea5e13c54eddf19770eeb`  
		Last Modified: Tue, 25 Aug 2026 18:00:09 GMT  
		Size: 242.6 MB (242643440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:7f7cf509c5ece476df3dd0d67ed479ca6539ec1cce2c20a60cb1dda0a89cc5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8533720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e309a35c3eef54e82f55df82b01c8d7928572ed8aad1d0f083d584295af9a553`

```dockerfile
```

-	Layers:
	-	`sha256:0581a54f0cfe79ea12f43f929573dba729380a4e9fb5d7415465206e30e90b99`  
		Last Modified: Tue, 25 Aug 2026 17:59:59 GMT  
		Size: 8.5 MB (8515807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c17a45ed967aac373c69464f4d4274102272246998cde772e74de4aced34d1`  
		Last Modified: Tue, 25 Aug 2026 17:59:58 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-12-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:65c931f9e3f5cfaa4c2fe9a9bccf3667f2d932245917fa776f4ea10225fe0383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399137714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267054f01c01ed78499cb3333dff068086eba873e59b76e3d9b8e3d6b0a271e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 17:56:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:57:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 17:57:05 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:05 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:05 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ede7e38cf2d7d74433aaf1f9d7fdaf10f8ef14f5c626e6d953887431132d36f`  
		Last Modified: Tue, 25 Aug 2026 17:57:33 GMT  
		Size: 16.1 MB (16071273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d0f983de9681640ce7d3acb2efd8ec032889c4f63f6d1f64e8461d1ff3915c`  
		Last Modified: Tue, 25 Aug 2026 17:57:38 GMT  
		Size: 240.7 MB (240729141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:4e09b19faa80ed8905f61e0fae9a9c7b7eef8196926b56a4f0dca46cac95b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8727992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a040eaa8b685262b9565ef671b6406a83963523404a13558aa5f480dd1ca1ea`

```dockerfile
```

-	Layers:
	-	`sha256:92dfd9301e7350f0974cdd29dc9b859396ee264714704c47be10701719653263`  
		Last Modified: Tue, 25 Aug 2026 17:57:33 GMT  
		Size: 8.7 MB (8709960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58edd31d05f56b7002eb5d451f46ba626825f82546ea37c46aeb7874a51428d7`  
		Last Modified: Tue, 25 Aug 2026 17:57:32 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
