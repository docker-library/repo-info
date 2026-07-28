## `openjdk:28-ea-jdk-bookworm`

```console
$ docker pull openjdk@sha256:162f86703b641bae60cdf19bba2129cb6accc758248a207367738d21503c3083
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:48b9273003bdf9980b527e475993740047ace2b89ddf667d9410925bc85787e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 MB (381542244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92950359153481fb69c8c8689aa7edbd2f9c4f3ba1ecb1538bd46ce3318e29d8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:18 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:18 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:18 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:18 GMT
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
	-	`sha256:76c1b0e7868e7697f2eb8ea4d232e03c8a76c8d5db925f2d00844cdb3d33a20b`  
		Last Modified: Mon, 27 Jul 2026 22:09:41 GMT  
		Size: 16.9 MB (16947449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c79dcbb1ae05416463e5180d564ce9c786466ce4feb9011db88a08b9a0d421`  
		Last Modified: Mon, 27 Jul 2026 22:09:45 GMT  
		Size: 227.6 MB (227644837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d8834ed563f4eaac80a1a1e110e7d50e7118b3aba34de5d3740f7d18c71762e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b1f2578d4d06d37b359a174db96146c93db1e063dc92d99c7ebcffd487d13c`

```dockerfile
```

-	Layers:
	-	`sha256:3a1a3e2204c4f2f6cf6c8f88ba947814608f524c52c96f1792976da18f2ac5c2`  
		Last Modified: Mon, 27 Jul 2026 22:09:41 GMT  
		Size: 8.7 MB (8666402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25b61dec1d6b30c361b75d20d8493fe4819ca328355072db023633923996bee4`  
		Last Modified: Mon, 27 Jul 2026 22:09:40 GMT  
		Size: 17.9 KB (17921 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bf0b47ff0c7f41f55c70dc22c0cf72da91ff8b9ae68fe68d2d2d1ca0e9eafa11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.9 MB (379931726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7be73845a50bdc6d6e2e8d73dbb0737d1821444f83f6ce4545b6b475d64c0e0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:35 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:35 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:35 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:35 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:35 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:35 GMT
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
	-	`sha256:e13630c7c66e23890f7bcbe163efa7369e0c5b64dbb9274924515b188a344efa`  
		Last Modified: Mon, 27 Jul 2026 22:10:01 GMT  
		Size: 17.7 MB (17731193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1700b13e0f9409e0e4a0631d1619c4c61906eec52b2022eb1eaa93b219cd8b`  
		Last Modified: Mon, 27 Jul 2026 22:10:05 GMT  
		Size: 225.7 MB (225705994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:eca638f1490eb5aef17772851811427d1396289dea01c40eb890bad16f52f3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5202a88adca4a1657ffc8b78f225ba2915932e4dd73492c1298db8b9dc636ea0`

```dockerfile
```

-	Layers:
	-	`sha256:a822a38020eca8baaf56c8cc4c7ec3f4cfe95fb4b83981cc9816882f5c54eb25`  
		Last Modified: Mon, 27 Jul 2026 22:10:01 GMT  
		Size: 8.8 MB (8803247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da7f2ee1bb476676d1bde83d745ca62d1fe4848d0a776a581c8c98b57a9fb04f`  
		Last Modified: Mon, 27 Jul 2026 22:10:00 GMT  
		Size: 18.0 KB (18040 bytes)  
		MIME: application/vnd.in-toto+json
