## `openjdk:20-jdk-buster`

```console
$ docker pull openjdk@sha256:ae8c10c209accd6c25c0ae4fd7101a26f6ce506bd8b429d41cf3413c12a35caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:20-jdk-buster` - linux; amd64

```console
$ docker pull openjdk@sha256:45103dbaa26191b15675bd744629d73122bf90e224a3f45b49ced430d3abecf1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332337875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b639bdd5f9239f0468ae1c4ade52a87b0c3459cf4b06689cb5d8e53e86d5ab`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:06:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:04:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:05:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-20
# Wed, 11 Jan 2023 07:05:57 GMT
ENV PATH=/usr/local/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 07:05:57 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:22:54 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:23:04 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:23:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01cd4ea334ab5c64bed24016c153dc7c276f552f468e564664e739dac31e09`  
		Last Modified: Wed, 11 Jan 2023 03:13:25 GMT  
		Size: 51.9 MB (51869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154ca12510ce3d46f33dc63036fb48d7e0d4eac5399ae1c60d9262a95868b1c9`  
		Last Modified: Wed, 11 Jan 2023 07:11:47 GMT  
		Size: 13.9 MB (13927639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7293e5c0aa161112e9bfbc670a3873ee700390142f4d98625056c8e6326bb`  
		Last Modified: Fri, 20 Jan 2023 22:32:40 GMT  
		Size: 198.2 MB (198231202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-jdk-buster` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:624cebe4ba05ecf220dc7e3cc37c153f982d9a3a526029a009ada0ad2b9927bf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330569525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd23515b66b49149867c866f447cd18bde4fd72286e624257e407c5e3ce186d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:33:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:34:20 GMT
ENV JAVA_HOME=/usr/local/openjdk-20
# Wed, 11 Jan 2023 13:34:20 GMT
ENV PATH=/usr/local/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 13:34:20 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:42:40 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 21:42:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:42:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26774fe15380d222e6b902800d590273893d73293509c3ab71a4682b74af442e`  
		Last Modified: Wed, 11 Jan 2023 03:32:46 GMT  
		Size: 52.2 MB (52192182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92367e01d33d99ca907fa94ac3756c829b0bdbee0d2bbbb7184ae168ffdb506`  
		Last Modified: Wed, 11 Jan 2023 13:40:09 GMT  
		Size: 14.7 MB (14672648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb39572e6497ff7b3524c8491517b407f9ac993d7cb82e06f409276cd31a13a9`  
		Last Modified: Fri, 20 Jan 2023 21:52:25 GMT  
		Size: 196.7 MB (196739860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
