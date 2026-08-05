## `openjdk:27-ea-33-jdk-trixie`

```console
$ docker pull openjdk@sha256:513cbffef07b6ff5b0213291dcfa631afe6b7f304786a230b3e0ff5524fb642e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-33-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:7e10d2945ec48da6ddcce4cd19498502765b37638c14a38891153eeac5065764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385956232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc33dcb53ffcb511cf6b4f29b0effdc440bdb2aec3d97ce6453cea335e205f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:20:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 02:20:05 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:20:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:20:05 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 02:20:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:20:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d843df64e218fd660ce863a688de60a5a2906143b26527e346f452f9378b3c2`  
		Last Modified: Wed, 05 Aug 2026 02:20:29 GMT  
		Size: 16.1 MB (16066014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420207bb225328fbe5d0b9862180d89ea4d554e3a32c5684e89371baf032aebc`  
		Last Modified: Wed, 05 Aug 2026 02:20:33 GMT  
		Size: 227.1 MB (227141268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:7dcd581452b3a34a76a9d41cf6ad8cb64254a27159e520e7a8da8f57fad33f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223d0a585f284a1b8c928124b499751242164ce4d320c6928eef8eeb0c7452b5`

```dockerfile
```

-	Layers:
	-	`sha256:fcfb98326ce65c7d00e78b440a69a7c7ecaadbbb9491a8427efdf1b9e7a35ea4`  
		Last Modified: Wed, 05 Aug 2026 02:20:29 GMT  
		Size: 8.5 MB (8509017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bcbbf13fc28e2fa110f52f750834b312464b4f577440459cda42f6c32373d9b`  
		Last Modified: Wed, 05 Aug 2026 02:20:28 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-33-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d1aad4d3214b407a3c3a2f6522c90f8eb1d1aa8ca88045dd8ac965eaf2dfdd81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383483148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308dc41984099e4eb3c95f5ded609053967514ce604368637d1abb7ac26a51f9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:38 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 02:22:38 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:22:38 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 02:22:38 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:22:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305d1471d3e8cbb0f70943600fe7793f4782140d8ed44e93b883561900b3bb07`  
		Last Modified: Wed, 05 Aug 2026 02:23:02 GMT  
		Size: 16.1 MB (16071393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227e0aded6406c7b3590bea4edd13b6d9baf8febd71fe77a39663407c778ec51`  
		Last Modified: Wed, 05 Aug 2026 02:23:06 GMT  
		Size: 225.1 MB (225110853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:dcf2b77282a6a964f78049faab183a31e272b9e3b13ef63fd18a3889417dac5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25706997ffa46ea5924d75900e4f2c85006200b1f9d72ab7bf9bb0cf9dc0e453`

```dockerfile
```

-	Layers:
	-	`sha256:4df827b1d7c7b2029e17e27c9c41e9b7a9b9f4eba6bdcf3f53570aa35fed6c1c`  
		Last Modified: Wed, 05 Aug 2026 02:23:02 GMT  
		Size: 8.7 MB (8703170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26bd6cc9357f03001e01fb72ee7d2d3b9903490fda752f3a01d7af244de77245`  
		Last Modified: Wed, 05 Aug 2026 02:23:01 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
