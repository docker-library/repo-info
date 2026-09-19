## `openjdk:28-ea-16-slim-trixie`

```console
$ docker pull openjdk@sha256:532a6d0a3eb5bc7b3aa78483d7aea23a0bd1402354709704794d63fead24d3f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:55df69abd64b89b3405f907a27febd77a0a0360a3b7bb91cc48c82907f45dbdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275146408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32305057524aa62e1e0143f494209bcef10d04d78f752cd62d36a16b32b4ad8`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 00:48:56 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:48:56 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:48:56 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bc8d6c61c5694043a14243a25f8af9a108b9d331f7fc33cd1df86afd7865ad`  
		Last Modified: Sat, 19 Sep 2026 00:49:20 GMT  
		Size: 2.4 MB (2371408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756893af7bac6bcbe46163fd15e2f759679d9f738d453930b555c5f14858e1e2`  
		Last Modified: Sat, 19 Sep 2026 00:49:24 GMT  
		Size: 242.9 MB (242944582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:60632255f3ffda2d3c7b9c71d14fb763eac4225d559019bc68973798ba31356e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8e396d8dea777ac60cc3f8395d69e62489d0a25f38f6640303b4424240a18f`

```dockerfile
```

-	Layers:
	-	`sha256:fe6b86a6148307927b496a0d639cd3ddb46c6e25f5dfb271306cb31b3c5af2c3`  
		Last Modified: Sat, 19 Sep 2026 00:49:20 GMT  
		Size: 2.3 MB (2285558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a53231b10904a5e4528d7aa10bd9cee12ad9646ccd8896e906f05aceb3d2266`  
		Last Modified: Sat, 19 Sep 2026 00:49:20 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:13d13554c847d0cb84d9c0d3000625017c570adfc005888ae3a3b26fbf675739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273494721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8c7b96bb1d19e8191b0afae39965d575f0905c1716908c2d25fe9ba370c772`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:51:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:52:10 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 00:52:10 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:52:10 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:52:10 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 00:52:10 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 00:52:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaac210daff5612a3abce1e809173fca879a76e515b4cf25756cbb8ab29d420`  
		Last Modified: Sat, 19 Sep 2026 00:52:34 GMT  
		Size: 2.3 MB (2314432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1334004fe4232df8f843c17d1ba5ba3b5bfb4ded7577c4b1410d4315232cc19b`  
		Last Modified: Sat, 19 Sep 2026 00:52:38 GMT  
		Size: 241.0 MB (240990598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9f67d2c1136b0a12e7ff9aadea241129fae53f9879a809808e7a36df86981226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a39c54b66ee791e4dcb30750ebcbbec46e492f7639a67a00fee35f338031109`

```dockerfile
```

-	Layers:
	-	`sha256:47743ecb034eeecc487bae1011d554846a32a1bc9854674127e101f972e1f73b`  
		Last Modified: Sat, 19 Sep 2026 00:52:34 GMT  
		Size: 2.3 MB (2285236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c393bb82e6e33a25754e148c64a442fe8ca0898fe88677e6a6d9712e57a4cb8`  
		Last Modified: Sat, 19 Sep 2026 00:52:33 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
