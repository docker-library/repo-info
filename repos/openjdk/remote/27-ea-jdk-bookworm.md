## `openjdk:27-ea-jdk-bookworm`

```console
$ docker pull openjdk@sha256:0b6f3ab2345710c20a8c877ed3bb2d67db4c8acedeac4eac322ca754d6cc13e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:134ec5588e55562fc77b61800f2748ed4274d2f07cf32c7b0405d47b954c0635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.0 MB (380989147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74494bfd02599184537b859bffd309bb6793619f16efbf2b91427506a837cf50`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:27 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:27 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:27 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6580065af7f1c571edf365a088a6e3c4580c46c78d127874d3508a374d98be`  
		Last Modified: Mon, 06 Jul 2026 21:39:50 GMT  
		Size: 16.9 MB (16946455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318b5b036cfc3c8f56e88cbecc04d49a00f7a7bee2cb9c86d91ae120ea404cca`  
		Last Modified: Mon, 06 Jul 2026 21:39:54 GMT  
		Size: 227.1 MB (227092419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:53428ca2826b02e2462b4c773c854e68e6b83ed5f8619cb2f7620fde954b259c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec404878369d9d63e96187b9c3fb66e6f3e4f811f7dabb75101f93a75974c6c8`

```dockerfile
```

-	Layers:
	-	`sha256:8d27b73c0d531f3bd64fe782cabd9a3d873dd3b6b324709357b3bc500c528bf5`  
		Last Modified: Mon, 06 Jul 2026 21:39:50 GMT  
		Size: 8.7 MB (8666374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cfbe47e71b04a56cf5a594e0c5d6d613e80c7b88b3e846017695f5d05b57cb5`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b05b51332e98ff72ddc949c6dd06b7b1d2bfe9c83c9d393038c2449ace52f4b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379295121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91cc26f6c7386056ea8096b9937aed916275bb2ba1b2a66c0fef87e6488043f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:30 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:30 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:30 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba38bd4c236504a7b9c5c99f9ce6102fdee900b79c000346d50ef9e9ad18c57`  
		Last Modified: Mon, 06 Jul 2026 21:39:56 GMT  
		Size: 17.7 MB (17730374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45342ca26ff5bc8b35a6d02cd0534c2620143f7b8c756bc93f08db2e4a0d7b1`  
		Last Modified: Mon, 06 Jul 2026 21:40:01 GMT  
		Size: 225.1 MB (225074524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d81e29d752773e7f322d770bddaeaa5d66cf72e2efb1b56f28249fe7133266b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777917d0b500d5215dd1e2d038d829645bdd66911f35178907937b674d7af3e0`

```dockerfile
```

-	Layers:
	-	`sha256:b7fb0a9da658d88d634a8cd83c6f3ff6b6038b287d52892a7dbf2d13aac497fe`  
		Last Modified: Mon, 06 Jul 2026 21:39:56 GMT  
		Size: 8.8 MB (8803219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8dcd6bed2292469e25889024fc0eda449c51881c7b747f24d3746028ddc4aaa`  
		Last Modified: Mon, 06 Jul 2026 21:39:55 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
