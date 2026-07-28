## `openjdk:27-ea-bookworm`

```console
$ docker pull openjdk@sha256:e8ca20932d173436949f57e2007e9fe96c2c5a48ef9f7b7314bedec19976a19f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:a1f5bd179650168674d30e71c23ff94c8307a7dc187de60545672aecf214a6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.0 MB (381037394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f8774bd4f8edeb6810d7e2d80284c0c46ff18c21e2a2ee6d60f149ab5727ed`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:08:07 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:07 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:07 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:08:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b1c2f5e1034e541025664d6f1bf7ab10df030e3f2c788dcbd138206ae839f3`  
		Last Modified: Mon, 27 Jul 2026 22:08:30 GMT  
		Size: 16.9 MB (16947578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04d491e5b63d08d641059aceab68bf16edfd13e68f51717ecf4fe14864fec47`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 227.1 MB (227139858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:40390e61d96ef95d6550c50d89d35eb61b0ed4f49f7cbd122472769f81f0dff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd1ee090e6c38453fd92218a391829d1b10688259af390e0e57e7ba008c29f1`

```dockerfile
```

-	Layers:
	-	`sha256:6dc17eb56ebddcedd34f5a33d8500db2b1697a1f24ca06e8ba449c4164e32de1`  
		Last Modified: Mon, 27 Jul 2026 22:08:30 GMT  
		Size: 8.7 MB (8666410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da6e84bb8250d040f3b6fe3c0732f2ef27904716fd6b2e20bc2d604958011c11`  
		Last Modified: Mon, 27 Jul 2026 22:08:30 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:89a48ea85cca1d4d980d435ad7feb02e174e58cbbdde5574cb99cbde94a5910a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379332385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f415ba07fab8453b44d7aa504cf769ebc808084b804eaca8154703a172efabc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:59 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:08:59 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:59 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:59 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:08:59 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb3f9bed71987848df103a9705d3d294739670c53ad0663ae047762669996a8`  
		Last Modified: Mon, 27 Jul 2026 22:09:25 GMT  
		Size: 17.7 MB (17731165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d69bd3e555b3849c4930df279ebfc75ed2e3e201d7d16421f17b8bbf39041f`  
		Last Modified: Mon, 27 Jul 2026 22:09:29 GMT  
		Size: 225.1 MB (225106681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8d49e015fde8e5ed025f1d37533f280752acc743935487e430ef0e2f32fa5bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c349b13e312bd2cafeef6a5873ab2f8a2580d5dbd5c4447c0213cb9410a2b288`

```dockerfile
```

-	Layers:
	-	`sha256:a0018abfc83c30fc60ee4eeabbb6aaa0a7834d212e774b5b44bbe928cb87370e`  
		Last Modified: Mon, 27 Jul 2026 22:09:25 GMT  
		Size: 8.8 MB (8803255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea6e1e83cae8fee7dca6c7b4b94c48048c2906cd552ff3d93b2fe35df1aef82f`  
		Last Modified: Mon, 27 Jul 2026 22:09:24 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
