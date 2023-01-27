## `openjdk:20-slim-buster`

```console
$ docker pull openjdk@sha256:91a4bfb7cf8511821e851b5d895346e5776014b4899915923404431bd55141db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:20-slim-buster` - linux; amd64

```console
$ docker pull openjdk@sha256:54ce06ebb89ee15594ab1483c0f4aaae6963aec4411ad25ca4d662131e4a31ff
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228915480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89880c5caf0541cf6631e21596b3b2028bcd0f9b35b5aa9ce0a1222b400fcd4c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:04:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:06:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-20
# Wed, 11 Jan 2023 07:06:17 GMT
ENV PATH=/usr/local/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 07:06:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:23:08 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:23:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:23:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828545e8b79db162ad5abac22f03044bd33fdec65ab2de0eab43a39483567a11`  
		Last Modified: Wed, 11 Jan 2023 07:12:21 GMT  
		Size: 3.3 MB (3275922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82873ca6f5a91a86be853e5e869e29548c3ef4963508dd572e56d3bf522b0d06`  
		Last Modified: Fri, 20 Jan 2023 22:33:14 GMT  
		Size: 198.5 MB (198499206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-slim-buster` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:dc46231ab9acf5f555d51309ea87544c661d7369f8144b60186d59fd7f50726e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226052413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a5d7087526317e206fb74b8be5c6bd32d8fff40f07989a81a0bf2b993b8fc7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:52 GMT
ADD file:08addf73dde8bf5ac64e0d9bdd1997ce5f406976c19da431616783c14fdb36ac in / 
# Wed, 11 Jan 2023 02:57:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:33:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:34:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-20
# Wed, 11 Jan 2023 13:34:43 GMT
ENV PATH=/usr/local/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 13:34:43 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:42:54 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 21:43:12 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:43:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7fac02f4cd2bcf681b9e156a67009cf4609f45447818b52327d93553bfeb2965`  
		Last Modified: Wed, 11 Jan 2023 03:01:58 GMT  
		Size: 25.9 MB (25914925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c3b6f956b3fce7c340f2d003d19d58e27ae60d033838d462212b60d5e10443`  
		Last Modified: Wed, 11 Jan 2023 13:40:37 GMT  
		Size: 3.1 MB (3129360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4723468b61cfd5a6c55bf96c3012b0dd107d7249e90511435bb8e98167ac90`  
		Last Modified: Fri, 20 Jan 2023 21:52:55 GMT  
		Size: 197.0 MB (197008128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
