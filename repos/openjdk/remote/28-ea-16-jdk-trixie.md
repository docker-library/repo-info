## `openjdk:28-ea-16-jdk-trixie`

```console
$ docker pull openjdk@sha256:4f8481273816faf84679225f7f54fbcb04da5a76486e5608f42e54d73063f5da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:283fd1f91c6f7d011caaaa790f43fd3218af966a5dcf4a782852034987453082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.8 MB (401792102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856fdab5c42512a0df11f815678c0f4caa7a66608ad67107845506dda4485bfb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:17:58 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 02:17:58 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:17:58 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 02:17:58 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 02:17:58 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 02:17:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd00bcb828ef20591cabc8bed3dc09ab33d1fe636302c30a7638d114254efbb`  
		Last Modified: Sat, 19 Sep 2026 02:18:22 GMT  
		Size: 16.1 MB (16067415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eca39a97aa81565bedb2a8db90aaad5990e677c74adb95f5b68d3d2bd1311e`  
		Last Modified: Sat, 19 Sep 2026 02:18:27 GMT  
		Size: 242.9 MB (242897428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:8461c336fc06875219815a04b2872751a49c8bf101c8a613439cbade779f85c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8539300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9b69aa65cdf01d495e2939ba90a1bbc9920a50e7ffd102d42e70344d554f9d`

```dockerfile
```

-	Layers:
	-	`sha256:04d59d15e9bdbdce0c0c832a83a555ba135d6f7ed184c79896a567ab7c47ddeb`  
		Last Modified: Sat, 19 Sep 2026 02:18:21 GMT  
		Size: 8.5 MB (8521388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6edc754a4fea356075b0552ab8b38daf3accb1a25515426e53f3b59d049dd47f`  
		Last Modified: Sat, 19 Sep 2026 02:18:21 GMT  
		Size: 17.9 KB (17912 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4a44a314efe1bb36cb72e90207db0628075097d985b4ddb5ebeb9f480b8340f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.4 MB (399424516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031194e7f941fded7fc0cc495332b8e9e06ecf59c5b1f277f188e799a350bec8`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:17:28 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 02:17:28 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:17:28 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 02:17:28 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 02:17:28 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 02:17:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef50560874824cd0774e1eb40ce04a14d6b6720173dbac390304e47b98477a47`  
		Last Modified: Sat, 19 Sep 2026 02:17:56 GMT  
		Size: 16.1 MB (16071339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d072c00e93eb8d438a676e54f6b751841f43d1ec3e571c5f3dc3acd5e44955`  
		Last Modified: Sat, 19 Sep 2026 02:18:01 GMT  
		Size: 240.9 MB (240943121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:36e9e0f78c2360b2133031dea54394b83587fa9fa4f4a7caf124d5692bd97001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d315941e6853732d2dbb30c2c88380a4d98f78d5801f7b22f8bfb39d8b4003d`

```dockerfile
```

-	Layers:
	-	`sha256:ef9c897b38644bd8bd8ac1c23fb14270458af7c161bbee6b55535b13eaf84c6e`  
		Last Modified: Sat, 19 Sep 2026 02:17:56 GMT  
		Size: 8.7 MB (8715541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea522833978bf47278f0aa8bc04b151a440fe2e612d90a42f96a51609442eeaa`  
		Last Modified: Sat, 19 Sep 2026 02:17:55 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
