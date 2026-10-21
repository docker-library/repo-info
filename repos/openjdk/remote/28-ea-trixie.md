## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:ba19ce344a5913a6e9e6819b66b96698f834c9df677ec4c2878fdfb8ab1c82d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:7e7b26d651be00b8d87dfbb868eeca7b015fb919b777229208ed609fefe7d2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401863198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ed8954c1718f354545df32fc447ead1e0a5773d7ca4fdf8bb2eaaa4768ae58`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:18:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 02:18:16 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:18:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 02:18:16 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 02:18:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 02:18:16 GMT
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
	-	`sha256:efc6354bdabd51c29f12dc73746f52fea1b1225cfc9af55f4d981abc263831b4`  
		Last Modified: Wed, 21 Oct 2026 02:18:41 GMT  
		Size: 16.1 MB (16068321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215145b6c7ae4d554d2b9e0734eba030ed0ea80c6c0d349c1994e71bfcfb0de8`  
		Last Modified: Wed, 21 Oct 2026 02:18:46 GMT  
		Size: 242.9 MB (242946857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:5c67f2745cd0f849d837436717482b4cefaa2ee36ffe03ceeb8990c859733735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8538023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba4ce2ba409859264228fa107d7852ec5db077415fc6063c4a8c900aab3cf29`

```dockerfile
```

-	Layers:
	-	`sha256:72351b5a0084dd21986bc063893198209eafa7d91955ef0a55d11383b042fd7e`  
		Last Modified: Wed, 21 Oct 2026 02:18:41 GMT  
		Size: 8.5 MB (8520111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517baa39f88c53ee870d1959b903ac6d5d2d6345354d28b59b401f55dce3de43`  
		Last Modified: Wed, 21 Oct 2026 02:18:41 GMT  
		Size: 17.9 KB (17912 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5eaebe19cdf99b87a9d39268fbcff468d0f1c4d32db26eb6f48d864efe3ed6ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399496174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c676f753a2122328ceaf4d9ddc1f28c48c3c910b3ec436b40779b0d6a91756`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:35 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 02:17:35 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:17:35 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 02:17:35 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 02:17:35 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 02:17:35 GMT
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
	-	`sha256:2c8617af8dff882d97dc9dc27ed1fe2608c9c86866b779b5ed5bc34262da8e29`  
		Last Modified: Wed, 21 Oct 2026 02:18:04 GMT  
		Size: 16.1 MB (16071396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c47efaad84e822b6b35f015a44de3f632a97f41b24cfefdfe225c27689c964`  
		Last Modified: Wed, 21 Oct 2026 02:18:09 GMT  
		Size: 241.0 MB (240992424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0b5ae6137472f5c6b2471adc34c032122f203eab6f42fd74570aeca7a2d30e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8732296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d93c90e60f34c196f7695b8b8da2914cfc979d5de6ba12d3fde2e0f0169107`

```dockerfile
```

-	Layers:
	-	`sha256:03fe4ae53e602e7fd714b8afd6f71b72043f1139d1d9ea54ac9be57d8ae11375`  
		Last Modified: Wed, 21 Oct 2026 02:18:04 GMT  
		Size: 8.7 MB (8714264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:148c4957e9d7553f13ef2ec6078b84f947b4e19eb529aa907092ef19fd332746`  
		Last Modified: Wed, 21 Oct 2026 02:18:03 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
