## `openjdk:28-ea-11-trixie`

```console
$ docker pull openjdk@sha256:c5963225c8f3c2c3e18589f54618805bdce7c92742f198cab2240e508479d104
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-11-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:1a33b79eb1af8aa4ce35ad0d09d785d98837bd5ec789bd476dc5493e70c503f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401484934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9528e86d1f98dc5aff8ae90ece7e74fd0d6089aabea7f8ac3e89d906059c405d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 02:24:25 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:24:25 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:24:25 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 02:24:25 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:24:25 GMT
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
	-	`sha256:52ecf7f6b47f752d79a739d8227a55b202fccadb843a2b08d2276712a329f4b0`  
		Last Modified: Tue, 25 Aug 2026 02:24:53 GMT  
		Size: 16.1 MB (16067207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e667a8c1b156654a01df6a59031902b4e8598941934807dc2c069dac614eba9`  
		Last Modified: Tue, 25 Aug 2026 02:24:58 GMT  
		Size: 242.6 MB (242640235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:fabc23812f5cd37dffe814447ed5af633484fe43eea19989687f72422a3e703b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8533720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f873b029d44d266e174e3f3749acf3c3d2bebacde75a54264e773a00649f4f`

```dockerfile
```

-	Layers:
	-	`sha256:ae5422646652bf0cf330f75f2fe2258a675ae5f4d72c04a441650f94a3b35795`  
		Last Modified: Tue, 25 Aug 2026 02:24:53 GMT  
		Size: 8.5 MB (8515807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69ac9079c11e7fef4f9f442f5f09f29b368a3658639ad90e5ff9805820e7dab0`  
		Last Modified: Tue, 25 Aug 2026 02:24:52 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e5fb2ad4230f3c4db8d4383dbe85cd66edf554885544b6250fd8174e23181421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399140974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77ccc7e49f24e92a230f29a20d639d69c0bcfad06eb21f651c0f23df7ee38e8f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:26:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 02:26:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:26:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:26:37 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 02:26:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:26:37 GMT
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
	-	`sha256:278e9c0e942b4b78df2254a8c0514892757875d1c9e58165acf8d5f0ae9fac2c`  
		Last Modified: Tue, 25 Aug 2026 02:27:05 GMT  
		Size: 16.1 MB (16071194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75f6928562d882c08b53d3a7b1eb4eaabc770bf855113fdefc798eb54ac898c`  
		Last Modified: Tue, 25 Aug 2026 02:27:09 GMT  
		Size: 240.7 MB (240732480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:e65a89bc07dff2af6a166230389064041270ad3fda1383f32cdad337ca669ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8727992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a115f9d3d2da681a492576b5e1d17d6e111d0ce32f699f4ac162a4e00d586ec`

```dockerfile
```

-	Layers:
	-	`sha256:0b7da319e69c89ad68a20c33a04b594909a6817366cd319b0a8ec0bba7509bd8`  
		Last Modified: Tue, 25 Aug 2026 02:27:05 GMT  
		Size: 8.7 MB (8709960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df0d1f32e5ad96bca19f04f800afb361ad4bea8a53110ed8433aa5ea9954942a`  
		Last Modified: Tue, 25 Aug 2026 02:27:04 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
