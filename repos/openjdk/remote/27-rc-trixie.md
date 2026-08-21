## `openjdk:27-rc-trixie`

```console
$ docker pull openjdk@sha256:0b284d5d55e059361aba686357edde931fc2457118875082c15b05a252b9d20d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:c77ed0b7392b9e1bf34aaf6620694fe13c2674c056abf2dc10a1f46248b87a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385960459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0960f6b4b3ade18c691cc12862bb1d2ba91772f1d1acd48b332499cc84d95dba`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 21 Aug 2026 17:44:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:44:16 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:16 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:16 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:16 GMT
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
	-	`sha256:3d3fe779ce98dec6510352bb0b1eb658bd4cc7a127702fc208edc30364e6dbfb`  
		Last Modified: Fri, 21 Aug 2026 17:44:39 GMT  
		Size: 16.1 MB (16067370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f6aa726c918b468ef5a5c275132b27aa920010f0b737b9f2423c7d691974aa`  
		Last Modified: Fri, 21 Aug 2026 17:44:44 GMT  
		Size: 227.1 MB (227144139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:5852175436eceae205298f5f9a75c83460d269c9d9c880d6666d043fb41d751e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8525712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebb33451c572e4ea6a5540f53cb821a152f83cc32b4a4e6e24fb6dcb615886a`

```dockerfile
```

-	Layers:
	-	`sha256:86dd1da5c2bfe79c48f25b916cd54593cc4902c64e312617e0d53427684a8a34`  
		Last Modified: Fri, 21 Aug 2026 17:44:39 GMT  
		Size: 8.5 MB (8508379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06ed5875ff01d7b43d38d28bfa3224c1e4ffb865bdb12809c9158ab898596ab8`  
		Last Modified: Fri, 21 Aug 2026 17:44:38 GMT  
		Size: 17.3 KB (17333 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c63eb9058d2be7df17ddf9019523729cc482f1deea06fd3daaa7e7ecc81153bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383482543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c2e9cc833069f0ad5fe8e5545b9b19bacb6c3a2ae5b5449f0d635777bbbf18`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 21 Aug 2026 17:43:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:44:05 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:05 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:05 GMT
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
	-	`sha256:c8090d45249e9379f900a0496a73a0db20809c80cb50bb982b25bbe4601e2fdb`  
		Last Modified: Fri, 21 Aug 2026 17:44:30 GMT  
		Size: 16.1 MB (16071294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7182f63f3a65b61a04039855487d8516695f4eebfd7dbee6477ee92199204786`  
		Last Modified: Fri, 21 Aug 2026 17:44:34 GMT  
		Size: 225.1 MB (225110347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9f51bcafc562c7d824db53d0e9eca3d276a47917b0abb7707a921f59584bf59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8719935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4746efb58cbe40451336b9a0dc2903d48744f79842aac5cf7f6fdd54edafffe0`

```dockerfile
```

-	Layers:
	-	`sha256:1014c75031227fa407691b7605fe0b56c17b515db2bd273f2f9e4b1ab6169180`  
		Last Modified: Fri, 21 Aug 2026 17:44:30 GMT  
		Size: 8.7 MB (8702508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a7ad1b07979cbb49752db98c9865bbaa81c1c6ecb98f8deba103887ea73966`  
		Last Modified: Fri, 21 Aug 2026 17:44:29 GMT  
		Size: 17.4 KB (17427 bytes)  
		MIME: application/vnd.in-toto+json
