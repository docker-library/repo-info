## `openjdk:28-ea-jdk-bookworm`

```console
$ docker pull openjdk@sha256:bbdc8b2be86df5652a3151a4bcc05174bd0dfcd4830b7202e3e5ef476a031bd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8468f454acf507276f0687c780bc10a51de07616a282ad931fdf349d63b0b573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396826030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14cbd9be9dae653b59374fa73b387db6b200e81db7b7a662aef14ac4aef17e4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:39 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:39 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:39 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:39 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:39 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2e306652522b6dad4ce9d31f35ff15eeda59c9d0538e28e597b6a74678198e`  
		Last Modified: Mon, 10 Aug 2026 23:35:07 GMT  
		Size: 17.3 MB (17250333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f43d4c16557fc2ace91acd554552edd27f058f27b5afd4c3e95ae0778aab40f`  
		Last Modified: Mon, 10 Aug 2026 23:35:12 GMT  
		Size: 242.6 MB (242626200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:cd6ea914f5977eb081052499b97247d5273ce1e0608216fbb7a31565f1443795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccf39631226078ff4afeaf12c7fae3c681a74e2ce4e40549a517409d60aec03`

```dockerfile
```

-	Layers:
	-	`sha256:b18f0befb01c921d7c531e2c5d94699d35555eb65aaec85ad1dde49e1ebbc209`  
		Last Modified: Mon, 10 Aug 2026 23:35:07 GMT  
		Size: 8.7 MB (8674187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c877d2d91d05980f8cba7043f96e4dfee7193c24078437ca3971d1f2269782b`  
		Last Modified: Mon, 10 Aug 2026 23:35:06 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:01cbaecc4e225b9eb68f869a8811afacbdbd9abbcf4e3fbb527df60aa39fc544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395241235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020bc95a573726ee7570dda418726d7777d2bb42147c30e6e041f77297666955`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:40 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:40 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:40 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b24a3817886b73c41c902aa7cf868d0b13131b8c5cef048c2e61db521175ebc`  
		Last Modified: Mon, 10 Aug 2026 23:35:09 GMT  
		Size: 18.0 MB (18036384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd0c0a704b7d1938c995c7cbad6a479c982f63a9c105d63b6acf1a0009ed18a`  
		Last Modified: Mon, 10 Aug 2026 23:35:13 GMT  
		Size: 240.7 MB (240710635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a5e3b24fab9f2be4896acbae0382c81a45affb26b1d9b0e6a028763d1550e09c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69050dfcbf6a995e3073eda09381debfeaec693a5b3469df82acf3fd5edad430`

```dockerfile
```

-	Layers:
	-	`sha256:479027fb27cf1436191bab716a0a8b0a7c77331550f824bbaf96ccc7eeac1d0a`  
		Last Modified: Mon, 10 Aug 2026 23:35:08 GMT  
		Size: 8.8 MB (8811032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0090f1ea233b5d8345608614a98114f30796d2a37347e30c2901d88e7e67fabb`  
		Last Modified: Mon, 10 Aug 2026 23:35:08 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
