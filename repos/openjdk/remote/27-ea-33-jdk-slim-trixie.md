## `openjdk:27-ea-33-jdk-slim-trixie`

```console
$ docker pull openjdk@sha256:0a4434ed9edab14ebc34dee8b22bf51b34f40512a895f5a98d0b7d0190dc0b5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-33-jdk-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:75e1b218238eb787129a2ddd48aa93cdb71c8f10435685aa20f49fdd9723f15a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259342530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467327da7455c4d7e86fbcb3a20e4f11b30d5c2b6c0a003016c450b7daf0fe3a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:51 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 00:49:51 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:49:51 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 00:49:51 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:49:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de74b14bcbe47391d690bf6a6c6c5b9a6bfc4a34854bc8f8b5b1c6d02228e74`  
		Last Modified: Wed, 05 Aug 2026 00:50:11 GMT  
		Size: 2.4 MB (2371291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cf3bc9be6630f6289b300f3e9419b436af6fc9a9a60c5ccf73102e647c5808`  
		Last Modified: Wed, 05 Aug 2026 00:50:15 GMT  
		Size: 227.2 MB (227190474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:7ac27fe6ef96cba221ae56adb8d6b5ef341f48743abf2d7c627458e472d51e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec07d7e1ef4941bffbf5b7d92e38d1f6d1e68679efd54ac17646da53a0badbda`

```dockerfile
```

-	Layers:
	-	`sha256:4badaa6794f68be98764d619b3c7f8294edc67ded8cb64782c9c4f2144a89961`  
		Last Modified: Wed, 05 Aug 2026 00:50:11 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58deab4b91b5afb038e7383e7dc531e20f68a8e347a9ed045cc00cbda67b98ab`  
		Last Modified: Wed, 05 Aug 2026 00:50:11 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-33-jdk-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f5a46ffcdf44221e1a257cfc0e1fd41275d2f668327806166ac29ad664851a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257621266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344cb0b0b2c9dbdb23f516397bf6f7b12275f724e0e8271aefccde50f43ad19`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:51:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:52:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 00:52:05 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:52:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:52:05 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 00:52:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:52:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea245792f7b8000aee6c9165a8556bdddd0a0a83024e00a960268001e5b4683`  
		Last Modified: Wed, 05 Aug 2026 00:52:26 GMT  
		Size: 2.3 MB (2314686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9820f6d8a001702b35433978f912eb8a9e0c1c2c90ee6016763219276b03e4`  
		Last Modified: Wed, 05 Aug 2026 00:52:30 GMT  
		Size: 225.2 MB (225162971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:614549834f6f4a963ed696bb6a36e17d9b2ad37fe695b31fa8509fefdd8e9c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57e41c477fa2653e06bc29ac4005b62d0df7ced7908e3bb79e254a649b64462`

```dockerfile
```

-	Layers:
	-	`sha256:82e334cb9a43033b539cd340c3e9ef943f01bca4c13cf2054757449c9d2d64ec`  
		Last Modified: Wed, 05 Aug 2026 00:52:26 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf08a27a7d32a46d2d8925322b74e5e3be8e53f34bfba8e814002c684abff541`  
		Last Modified: Wed, 05 Aug 2026 00:52:26 GMT  
		Size: 18.3 KB (18273 bytes)  
		MIME: application/vnd.in-toto+json
