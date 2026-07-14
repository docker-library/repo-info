## `openjdk:28-ea-6-bookworm`

```console
$ docker pull openjdk@sha256:b4d64125a11814aafe9da3ef1f83dcf7f1f1097b9fc943a4aed8b83288145b12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:655a6eb846759c68750029c3f9d3559bbcb93a8243f2c13dec01b007e2f50016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 MB (381461427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ffe99bef7e4fce2fe576ed64965621dcb2e92ccb01ac8bdb65a769d6e4210b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:54 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:10:54 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:54 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:54 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:54 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:54 GMT
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
	-	`sha256:d1b4e99d72efcd525e824ec0d440f8c34f6e9e15695f8ac4340e4179c2277f92`  
		Last Modified: Fri, 10 Jul 2026 17:11:19 GMT  
		Size: 16.9 MB (16946547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18b2e887d030ff6f7d8afffc56df6d8740f23ca193f367302d668f5d036a7b9`  
		Last Modified: Fri, 10 Jul 2026 17:11:24 GMT  
		Size: 227.6 MB (227564607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:7cbe942d216150b1b9c621ce3c0f187d9274f33fce0701a797d4d340e2617e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd24d0126fb2ca1a80ca312211a56937425a6a33e0a60c96b94cd1d8e723a26`

```dockerfile
```

-	Layers:
	-	`sha256:78b082d8ce287f122ac7320eed724cf030effad0b84532fbc40b61fce73b418f`  
		Last Modified: Fri, 10 Jul 2026 17:11:19 GMT  
		Size: 8.7 MB (8666366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e150b84c1465625fdba13437e95736a4e0927683b4508474bdd00ca3117ac039`  
		Last Modified: Fri, 10 Jul 2026 17:11:19 GMT  
		Size: 17.9 KB (17920 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:180031938b2c869d3f99a6b62cd251a92aafda9ac8777e5a763e70de63e1630a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.8 MB (379847389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae8072e4c6f7a77f720fe812be48282a450d667e6051db1409c224bd278a77`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:24:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 03:24:25 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:24:25 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:24:25 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 03:24:25 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 03:24:25 GMT
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
	-	`sha256:37c616dbaa9775d029257818bbe15f11de6ba336a54fff09e50bd0466b04b2ff`  
		Last Modified: Tue, 14 Jul 2026 03:24:52 GMT  
		Size: 17.7 MB (17731151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e1ccafe50fb4bd5b480260ce54d08e5d1aaeeb210a703b3945f3f7935b3114`  
		Last Modified: Tue, 14 Jul 2026 03:24:56 GMT  
		Size: 225.6 MB (225621699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9eb83a5adee8363e8eb0f27a001e44f1d3a60278e76f5970a7921e71b340d70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150b6fb4dffd47dead879106be472f9057dc3be100d1345d00f0faf631e3a414`

```dockerfile
```

-	Layers:
	-	`sha256:3f003bb0acfe200a9d9bf7dbf4bdd315cf17a62498098934b8d6f072584ead9a`  
		Last Modified: Tue, 14 Jul 2026 03:24:51 GMT  
		Size: 8.8 MB (8803247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141f1dc3a87186845732892bca74a02c86fd5ab410b2afa2c0e002949f7499d4`  
		Last Modified: Tue, 14 Jul 2026 03:24:51 GMT  
		Size: 18.0 KB (18041 bytes)  
		MIME: application/vnd.in-toto+json
