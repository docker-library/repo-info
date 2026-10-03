## `openjdk:28-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:06485bb19ce6ca43d99934561132f2a3753e4754fb278584f66c9c177c5dc992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:7d1d1ba5f067962c141189cb3dd852ff70b6d3bdfa98855e3cd5c5bb037bb6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275303925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45164c94fde42e1e52f1fbc70232fb2443513b79237c44526d7d48b47a80da7d`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 23:39:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:40:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:40:07 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:40:07 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:40:07 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:40:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:40:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1cd2981ab9d4af336f48f3094e7e1f6fa3b2d2083d7dd03d2e0cd131a41350`  
		Last Modified: Fri, 02 Oct 2026 23:40:30 GMT  
		Size: 4.0 MB (4047471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe73618c608adae0bf21ada0975fd0c508bcdeddeac993137a182f2beed0b7e`  
		Last Modified: Fri, 02 Oct 2026 23:40:35 GMT  
		Size: 243.0 MB (243018011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:51c7da360edc43d5d851ac99d2c26c5b08b32ac3fa3cbd8d1a822650301b544c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b448d18916ddb6185358f197a15c2ef6e1f5b6499f87f12ed1040bc08d572fd4`

```dockerfile
```

-	Layers:
	-	`sha256:8a3a85f66e2bba1405201031b9d2172b78f904b6825b8f23e4a97d45525fa8b7`  
		Last Modified: Fri, 02 Oct 2026 23:40:30 GMT  
		Size: 2.7 MB (2655777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5377f36b5e41f7cabe860af38f202d355176d4f9ac85acf66e4ee8c31d86bc7a`  
		Last Modified: Fri, 02 Oct 2026 23:40:30 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:379708fe2c89a2492639a34acc8f5318991dfdd30b14523022dc05d1c0618afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273067003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fbd55cb849c914e544ad6a2ff4b825e195eddb32b8c1a6e85b27dd69691a7a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 23:38:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:15 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:39:15 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:39:15 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:39:15 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:39:15 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:39:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568192e81ca8d7539547905c339ee0a20fb784b3fb39f228ea34cf9e979bfe90`  
		Last Modified: Fri, 02 Oct 2026 23:39:38 GMT  
		Size: 3.9 MB (3863295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25201bff2aede20eb825339e797ca1990be137544c2239f1ed98b26f58a10b8c`  
		Last Modified: Fri, 02 Oct 2026 23:39:43 GMT  
		Size: 241.1 MB (241080028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:434523d39cfb2967f535c3beb7c7060d739951eafa72ab37537d4f51983096c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcaefdecb39f2f2589936490c0d1f9a7456979139092ecca5be5aa5068bdeba`

```dockerfile
```

-	Layers:
	-	`sha256:f9415d3edd4ec7ac6e7f0dba38cdbb7e6267383ccac929b681a52c491433eb24`  
		Last Modified: Fri, 02 Oct 2026 23:39:38 GMT  
		Size: 2.7 MB (2655411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:278753c1dd213e6b1787ece46ddecf387d2bf44eb1e41d7d0f8d738857c03296`  
		Last Modified: Fri, 02 Oct 2026 23:39:38 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
