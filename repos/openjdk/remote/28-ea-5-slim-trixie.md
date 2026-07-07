## `openjdk:28-ea-5-slim-trixie`

```console
$ docker pull openjdk@sha256:bf77c338e9b1378df2edef29d3c4e54ebc963354a43be2963e881bfd3ce0620f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-5-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:0d5079ead2dada8dda1fd138c03f024c500e1ecf9320cdbead5bbc3d0ae9c9bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259749429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4331c0a96f4be95f5f2fa67aad19bb2697cce648fb850e652956f398328e9520`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:15 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:15 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:15 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171a558f78b9dc9ef88d1585838e9b218ec4d2a4ff8c9fc839e64fb0aec6fcb0`  
		Last Modified: Mon, 06 Jul 2026 21:40:35 GMT  
		Size: 2.4 MB (2371309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bae2fc245168db9959686294074cf1652d7840f2e40a8251cb2e458bb0c6f75`  
		Last Modified: Mon, 06 Jul 2026 21:40:40 GMT  
		Size: 227.6 MB (227592701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:f12ab0f7fb6e3da0a8ef39cc0d9659df1db417d31eba927d0ef3f8ca660d8400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c460f91ab550ae258db1dc4376a60e414a5cfc48fbbdbbe0349f60152c2842ff`

```dockerfile
```

-	Layers:
	-	`sha256:af751ab97e1b76a754be6c489148451ca1ab7d71a9d055de81a322572820717c`  
		Last Modified: Mon, 06 Jul 2026 21:40:35 GMT  
		Size: 2.3 MB (2276372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4331a671b194b7badc886458f752a993fcb4d1282f14a52407c041b123a323e6`  
		Last Modified: Mon, 06 Jul 2026 21:40:35 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ed49589f0d64976d45d4bddce63eff718eb3120322add5c9323a9413fe932fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258107267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce77a45cac4f86454141bc2489f9f230a98152605ededad95b5967dc0a98a62`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:17 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:17 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93294b91724fb0f55f1b3ecacf82b5cb634be6c08953371af5f60d917e354002`  
		Last Modified: Mon, 06 Jul 2026 21:40:37 GMT  
		Size: 2.3 MB (2314582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a131e5a7a5da14c5128832afd3489886961443869b78f35c1373cb13ac5faf8`  
		Last Modified: Mon, 06 Jul 2026 21:40:42 GMT  
		Size: 225.6 MB (225644134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:20cf012f6140e13be7208c1941a4387e4484bf424849b21e259c45c4e2653fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d495193c86fde49a69edc29f4a9dc01b08b46a0c56b7bfc02098bd6a576467ef`

```dockerfile
```

-	Layers:
	-	`sha256:74a0bb1e2c46c3b74c34e1cd320acccd55712c6eb25a8ebdc42700c20433421d`  
		Last Modified: Mon, 06 Jul 2026 21:40:37 GMT  
		Size: 2.3 MB (2276050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01f4b1cea2eb2d0cb6e3025a69cd94d8634c49af78351df7885d94c74063b895`  
		Last Modified: Mon, 06 Jul 2026 21:40:37 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
