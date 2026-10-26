## `openjdk:28-ea-21-trixie`

```console
$ docker pull openjdk@sha256:14f45045ebe7a22f8ebd0955d1d2503ce016b31cb9f30e26b5191b80113d5993
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:05591b5b02ca1e11c5b0cdc0e1ad0e1d16ce37dec8063d788ef6876df5bcf1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402208207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ee7b0faa58ddc4f645b0a36ea614cb055399697ef302768b06574ff30f1bc3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 17:18:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:18:42 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:18:42 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:42 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:42 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:42 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c9cf9e91d8b71d3128ca3c18d749f24f2f662d1f0c4dad36159cacc95948b`  
		Last Modified: Mon, 26 Oct 2026 17:19:11 GMT  
		Size: 16.1 MB (16068296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd28a7a0a6f146f3982516eef6f6bf8fd4b64d654c7865227a9caf8a4a5e74f`  
		Last Modified: Mon, 26 Oct 2026 17:19:16 GMT  
		Size: 243.3 MB (243291891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:11f0461d63ec4057d03c1632f7d9d416a8de06d5ffb93459e33b5a9cb79c703d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8538024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657e212970d276197a08de8eadd448bc342af71e854d0ee65623c88b8d706c92`

```dockerfile
```

-	Layers:
	-	`sha256:f0cca8b20405237c990b0083fe9b365045c3307f411d3c57a7f2d540eadb73ae`  
		Last Modified: Mon, 26 Oct 2026 17:19:11 GMT  
		Size: 8.5 MB (8520111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e70fc2a1b6cd05ef528af5a8fee731f826f63980cf3e1c1ecc80cea42e24b0`  
		Last Modified: Mon, 26 Oct 2026 17:19:10 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bba8adcc8fe4409eedf058ac1cb11fb839f8815842582e3b3f4538ec4b79673c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.8 MB (399801910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904cbf0ace1e49599db33f379812e797dbed75433d79cceefed91adaea668e15`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 17:18:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:18:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:18:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:37 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed8ed581b920f78a39d520ba29c420e12b9674f6a91a44f271cc090af625bb0`  
		Last Modified: Mon, 26 Oct 2026 17:19:05 GMT  
		Size: 16.1 MB (16071262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bfc408bfda0f0aa9dbaae30bb5d0dc02526e4a3a802a978f0b7de06bdce639`  
		Last Modified: Mon, 26 Oct 2026 17:19:10 GMT  
		Size: 241.3 MB (241298294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:fe1300ed7e71f708c6e06a88fb4f2ab053ce0c8085f0b80afaf5952bf1ac7b0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8732296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535487d2647c9c120f25c5ebd057272b4106c3c1369302c38c4e7d62ebc7b245`

```dockerfile
```

-	Layers:
	-	`sha256:ba69ad267631484a2c998ad1ef00d6c01be020c070cd8e3b6e971bc7a8ff1db3`  
		Last Modified: Mon, 26 Oct 2026 17:19:05 GMT  
		Size: 8.7 MB (8714264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bffbdc0e8e85a2269cc72e3a71125c8c20b280e15490ee8110b21378824e7356`  
		Last Modified: Mon, 26 Oct 2026 17:19:04 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
