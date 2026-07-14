## `openjdk:27-ea-jdk-bookworm`

```console
$ docker pull openjdk@sha256:66997ab57abe6aa67fd8bf2f10beb7e3da1a44e1324feec79069a33f244a6c4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:4bbfe5b8430070b347d9f69097c4f2fad7835ff728dc4ece020c4ba2be4d9c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.0 MB (380996581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9cda11db61b730ba447a8352b6c0316c2e6bc3c8e59448cf862cfea8630eaa`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:33 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 10 Jul 2026 17:10:33 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:33 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:33 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:10:33 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:33 GMT
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
	-	`sha256:3a3cb4b947dca24d3489e0a8667aed1bf7007f41c0b536f3c691529d39d4dc41`  
		Last Modified: Fri, 10 Jul 2026 17:10:57 GMT  
		Size: 16.9 MB (16946446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183766c7a097d5f6902f311b5500127ae5af57e5444965ae520ed64025499b6`  
		Last Modified: Fri, 10 Jul 2026 17:11:03 GMT  
		Size: 227.1 MB (227099862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:13202dcc88207d831dbc4e07c303cb2ffb64c05543353af57bae3d38fbdacf8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b1314534e700cb35b93eba25dbd487138034ce814757972bf30e7b6ae5b699`

```dockerfile
```

-	Layers:
	-	`sha256:d9cd21b0c94dd275433dda32ca816d02c8c1647052e67bae87b4363b1ec138e3`  
		Last Modified: Fri, 10 Jul 2026 17:10:57 GMT  
		Size: 8.7 MB (8666374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b78c205781efe1283978c698eb24c130fa0416e4bf04402bb6cf1ebcaa8f9d1`  
		Last Modified: Fri, 10 Jul 2026 17:10:56 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0d84068439d9196447a99d3475f98b1afe8ee5e2798f568ede34a4cc4f33d7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379300865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9685bee673467db51b06d2d964596588c1f86f003dcf48f129050ef0a89befc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:59 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 03:23:59 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:23:59 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:23:59 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 03:23:59 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 03:23:59 GMT
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
	-	`sha256:921774ad110714e1779bd80dc1c99990de391b7c68a452034d9571efba87b4c2`  
		Last Modified: Tue, 14 Jul 2026 03:24:25 GMT  
		Size: 17.7 MB (17731063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ecc082359f434ffd2bd9483bc82d2feeca20216cf8a1b3efcfeeb75552f5a82`  
		Last Modified: Tue, 14 Jul 2026 03:24:30 GMT  
		Size: 225.1 MB (225075263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:be583d7f8c6c8b777c468aea6ee195b6f3279580af80ec35deb3cec614390e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c5b36dfe937df6da61007e73811dcd93ca6e218609be4fd668fe6a169358dc`

```dockerfile
```

-	Layers:
	-	`sha256:5d25cf1d2408ed93501548d64a9453798e9d1b5c47854e313ae1c20d74277705`  
		Last Modified: Tue, 14 Jul 2026 03:24:25 GMT  
		Size: 8.8 MB (8803255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61db95d2dfb3ca2c20a4fd5d14a3442c323673e6a2d5a2b6c4ad63061e810dca`  
		Last Modified: Tue, 14 Jul 2026 03:24:24 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
