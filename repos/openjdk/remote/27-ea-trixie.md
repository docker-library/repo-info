## `openjdk:27-ea-trixie`

```console
$ docker pull openjdk@sha256:4d5dfef536a27a6703a73bad3a69d42afa91cddc46cb0a5cb10122ebcf0a6499
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:6200304675afd70beffc89a47cf26e78bbba97d68f7da2668744ea7b36d6c0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385900722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce1a193002abcd7375cc13fb5becf0e3723f21df8b74141871864d941ef6f1b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 10 Jul 2026 17:09:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:00 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 10 Jul 2026 17:10:00 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:00 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:00 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:10:00 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d6acaff1e67b6ebd04e673986768e5f750e3194a1bb472a052614de95ef568`  
		Last Modified: Fri, 10 Jul 2026 17:10:25 GMT  
		Size: 16.1 MB (16065736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b1670a97e60fec44001d5f4e43e081277814a67af6c5beda89ac25258f8c2d`  
		Last Modified: Fri, 10 Jul 2026 17:10:29 GMT  
		Size: 227.1 MB (227104659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:33eaec9bdb5784dca5aa7cb3a26b50027c8d7cc25255a839f7dea97645804974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43c4fcca2d3af309c1e754b11a0e788568794d8551a7519370018b7013af073`

```dockerfile
```

-	Layers:
	-	`sha256:b5bf526cfaff8f70db69688a2f5e4a20d0889d5d040acdb21a7325a8305aadfd`  
		Last Modified: Fri, 10 Jul 2026 17:10:25 GMT  
		Size: 8.5 MB (8508895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a09d63e1e2e61eb6615473354a69115d1a3f7292674671060ac3880000832834`  
		Last Modified: Fri, 10 Jul 2026 17:10:24 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cacf825f3afdf2773b5eac25f70b8d953ed0403f6085abd0ba5a5e460b427c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.4 MB (383448764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2023c74f7759cd6761ac4c1be98a9da261a45e74f72e34ebb4812ffe267227e6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:23:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:44 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 03:23:44 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:23:44 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:23:44 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 03:23:44 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 03:23:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d011a70c7c91f54971ac434bcfd76927836c1b0cdcf6a6d0397991c16b515e74`  
		Last Modified: Tue, 14 Jul 2026 03:24:10 GMT  
		Size: 16.1 MB (16071431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178e2676f4846483951cd79df393000645d22657d16c3c8f605a5df7096c6b5`  
		Last Modified: Tue, 14 Jul 2026 03:24:14 GMT  
		Size: 225.1 MB (225080675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0eb3a872ee47692dfe2d08c82851fe3381cfa39af1753d780547f85175956896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033bf285215f1131084da92539fd2d8f77eca3ad3f9423727b97c1c05ecb9490`

```dockerfile
```

-	Layers:
	-	`sha256:5f08cf8308621a50d82e8e354032fb04f846132c7c33032dc80b1efaace99e87`  
		Last Modified: Tue, 14 Jul 2026 03:24:10 GMT  
		Size: 8.7 MB (8703138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21f67cf02bce3e4c032ef451d7d2aa4ba2e504fbb331b88e1fbce7c34cc1751a`  
		Last Modified: Tue, 14 Jul 2026 03:24:09 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
