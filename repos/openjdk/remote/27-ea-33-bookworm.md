## `openjdk:27-ea-33-bookworm`

```console
$ docker pull openjdk@sha256:967829f75a1feb42f3ed10d7546bc63b43e3e27059c200ceb6f50e86a2f77e39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-33-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8af596bd9f3c00cad31e56d9d9c2ca2b44b3c322f9d71ef0509561466996a574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.0 MB (381034144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68138fef4e9c7d76d63731ff13123ee5b82447da2d37680745b971aaf12dec95`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:20:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:20:59 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 02:20:59 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:20:59 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:20:59 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 02:20:59 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:20:59 GMT
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
	-	`sha256:22da4529c804daf1e68c4afb024307c5e55edec7d4d3b68052fdf8aadb7c1336`  
		Last Modified: Wed, 05 Aug 2026 02:21:25 GMT  
		Size: 16.9 MB (16947495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa1c9d87cbf10df72aa9a396874430f154992f6764bd11abe1acfbd84efb1c7`  
		Last Modified: Wed, 05 Aug 2026 02:21:29 GMT  
		Size: 227.1 MB (227137152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:62ecb08716682ca61fbb86c72a2e18ac5657246a3520ed8d556adf64491d403b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada62abfeb67912db65b623c534b400348d84bbafbae589980be65befcf77d57`

```dockerfile
```

-	Layers:
	-	`sha256:46ffcc5142fd73acb9fa6cdb5ce1b66b8ff9ae233f5e8c0e8c348bfaa2e519f5`  
		Last Modified: Wed, 05 Aug 2026 02:21:25 GMT  
		Size: 8.7 MB (8666410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c36fa16a6474e12248fc5b8a7e68d0b88239a3be210c15cddf16cfb10410f1e6`  
		Last Modified: Wed, 05 Aug 2026 02:21:24 GMT  
		Size: 17.9 KB (17938 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-33-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:06790e6ccab965bef1fb361aa2aedcb2cb10ce6d63f0bb96b8d31c21eb8b0ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379327474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3889c7bca02caab158279724ea6a5d143dec1532949f8b55d26f0dc36419753`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:44 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 02:22:44 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:22:44 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:22:44 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 02:22:44 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:22:44 GMT
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
	-	`sha256:119e1236b07e877cb1f9ced73deef57d1d082437474b7e7f1791b189fb3ac542`  
		Last Modified: Wed, 05 Aug 2026 02:23:10 GMT  
		Size: 17.7 MB (17730955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ff77ce0839db98bd0dd6b8d85e8832a4eaea448e659aeebf93a2aae79189a3`  
		Last Modified: Wed, 05 Aug 2026 02:23:14 GMT  
		Size: 225.1 MB (225102303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a11e17a297f94bc1b69bcb31e7095666d4b7ebc40c90622079ef912d1fbd9344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddf12f9bd449e79a40b54750147871fdb8b82a3f7686a9812ff36ba1728d690`

```dockerfile
```

-	Layers:
	-	`sha256:7736ba51be4e74d7f1ae1eb8796aba8bc327873645fd93e94ba064d928548418`  
		Last Modified: Wed, 05 Aug 2026 02:23:10 GMT  
		Size: 8.8 MB (8803255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1becef1f9feb5c96333b5bc944cc6af92ce9536c8da211bd038fb306c6784c7`  
		Last Modified: Wed, 05 Aug 2026 02:23:09 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
