## `openjdk:28-ea-jdk-trixie`

```console
$ docker pull openjdk@sha256:efeb0cb255595bccdb37652d6de8e075c75e5d5213d3102f154bb899ece35d03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:1b33c1ffa05e8fed8710d14d353c242a4522f31bc99e98a903add3542e061748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.0 MB (402007973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19432dd8220360c0ebc992e1346061c2dea8d79011f20dfd4b5fc93000c28cf5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:33 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:33 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:33 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:33 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:33 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46de867e10f1a7ead39564fe49ba46f47532df595585db03e117f563592d0ac7`  
		Last Modified: Fri, 16 Oct 2026 20:33:00 GMT  
		Size: 16.2 MB (16216340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff8d2a3bbfe09c742d49c46f75e129feb0fcfdfcd82790ced1ffaecf3168889`  
		Last Modified: Fri, 16 Oct 2026 20:33:04 GMT  
		Size: 243.0 MB (242950996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:144195caeac37e2a681f5f97c07e046907454c301b10745ebcb36008daa7a013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8539301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2e7d5b6b61e1b8c707df63f44c22fb1b24a4f91cc0df9f3bafa0faf61b6129`

```dockerfile
```

-	Layers:
	-	`sha256:111d9c37b233e3a52ac4efc017fad3a6df9cedd3685cf25844c2ef846ac4b243`  
		Last Modified: Fri, 16 Oct 2026 20:32:59 GMT  
		Size: 8.5 MB (8521388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf53b95c89ac82cfd5807bea1cbadf0f6468353c54a43efb4fa3eba75871642`  
		Last Modified: Fri, 16 Oct 2026 20:32:59 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:dbf5e5821aba1cf6ac0edfff47bbbebd1f8d5ea92f86e3192a7873d5ee85b063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.6 MB (399630088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34916f28f672ce8bea60ac15a2d20d59e03718995f724482c54178b2a4668233`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 20:32:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:27 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:27 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:27 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:27 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:27 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7175f3abcc4c7ca7086f91075e6964cc3c6cd599387879ed7ef0cf256626421e`  
		Last Modified: Fri, 16 Oct 2026 20:32:56 GMT  
		Size: 16.2 MB (16214529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb29aff0b120c0b7f95f57b19ff36d7e95561cb0092255cc558736f7ac142a0`  
		Last Modified: Fri, 16 Oct 2026 20:33:01 GMT  
		Size: 241.0 MB (240993182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:85fffc762e848f7a2bb3e9ccca92107c9c81696f54c06b98287f24590b991b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a316670a25f4ca42cd8c52b30043288ae65f96c56d876945c1e26eafb9904494`

```dockerfile
```

-	Layers:
	-	`sha256:135fdc8893f47fce1e50c4668d73f739956007e8bdbb4af31703a320b2143f8f`  
		Last Modified: Fri, 16 Oct 2026 20:32:55 GMT  
		Size: 8.7 MB (8715541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0db36fe3a89c0049c0fbe8a6811d386ca66d4e78e3b11010fa81d26012dd4733`  
		Last Modified: Fri, 16 Oct 2026 20:32:54 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
