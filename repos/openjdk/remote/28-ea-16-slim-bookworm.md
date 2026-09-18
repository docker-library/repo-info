## `openjdk:28-ea-16-slim-bookworm`

```console
$ docker pull openjdk@sha256:80e713672f2e08a6724df6c825c51a6a4a0765d19c704895ba4757c6e8163416
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:30db58ecbbec2f0021caef9e52a229ead3a6d6acd97a9b0c630d7fa1f237e53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275226895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6ced4dbd551f36ac3d8ccfe2c389337be86d509d61452101abd09ed22469ac`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 22:29:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:30:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:30:07 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:30:07 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:30:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:30:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b676760e607a030f2d45e5337f5cb8e70be1f5a457484169150d67308b9a1322`  
		Last Modified: Fri, 18 Sep 2026 22:30:29 GMT  
		Size: 4.0 MB (4046384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605354bb46dd4c523a9f0e71f05196e814ca9db3e389138d12c6cc5be79036b8`  
		Last Modified: Fri, 18 Sep 2026 22:30:34 GMT  
		Size: 242.9 MB (242947856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4bf6b9bd81da5b08991f71bf6d2e22b96eef5400362e6489a350778468fbd1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd50b108c240a71446b0bf907172f90a0989a76b95ccdb725b3ac8663e980869`

```dockerfile
```

-	Layers:
	-	`sha256:132ef3bdc60907f5778575d0bf1c183a04b080481439cc8081118110723b231f`  
		Last Modified: Fri, 18 Sep 2026 22:30:29 GMT  
		Size: 2.7 MB (2655741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0613db551cc678ec3dd1229119976cdb25cd0a1b5130067a72b2925c39c79858`  
		Last Modified: Fri, 18 Sep 2026 22:30:29 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c7b295acb7b7f5061958006bea0eb41a908c36cd64257834c3ea52ef2ba1746b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272972372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e07034aacc34c4a7aaec65dc1d17eea054f7b1cff248033d58145aaa65bd4c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 22:29:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:22 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:22 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae73394e82f35c59f9e6170aeabcb130c1c1d516d8e0926e5897ce93ba05993`  
		Last Modified: Fri, 18 Sep 2026 22:29:46 GMT  
		Size: 3.9 MB (3861345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981007c4c32bcd5d67f00de9b9d7a651fc56f7eb0942bbd58aa4c49030752194`  
		Last Modified: Fri, 18 Sep 2026 22:29:50 GMT  
		Size: 241.0 MB (240993738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:98363994bb3aba48552a943f0776a7b717762b332f4bb7249c27b99fa38a1dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef18643b94f0d255a61e4d036a29dd297703283c7a3d596d88262eb37d9c58a8`

```dockerfile
```

-	Layers:
	-	`sha256:01540e9328991c50c6b8206d14bbf666d924ac54174a6c5dbe2b260b4a00a8d9`  
		Last Modified: Fri, 18 Sep 2026 22:29:46 GMT  
		Size: 2.7 MB (2655375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff629ce03077694c974e9fcf374e11a4fcd2e643b172fd2d56f30b607e5d0a86`  
		Last Modified: Fri, 18 Sep 2026 22:29:45 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
