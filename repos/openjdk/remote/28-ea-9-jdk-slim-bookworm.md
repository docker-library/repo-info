## `openjdk:28-ea-9-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:bc0c47ae0c7314763dfd953dc892c843e3c074ca891465351aed5eae32618179
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-9-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:c9be292a9141878e1f0501a859f9d3fbfd911e2c300c02839cc0e62da117f0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253731281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe56de9449ce279e47489ef9f0a46eb4588bbda649042d030e904ed64ed0b6a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 00:59:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:46 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:46 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:46 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:46 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:46 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d355e56fb835c872a944ad7789ccb64599832b000847b5d37a6bbe6b01424999`  
		Last Modified: Tue, 04 Aug 2026 01:00:09 GMT  
		Size: 4.0 MB (4032926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd766d7290c556e3e0ce7aacb9d4ae6c4eac5c0ea8de07f2651802f2da50002`  
		Last Modified: Tue, 04 Aug 2026 01:00:14 GMT  
		Size: 221.5 MB (221465712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d3cc8e4f841182df42c1f7aca1b666fe22b9ff6c7850b378d564aaa6221a4bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6976d75d67a4f61138cc03f2539e9dbce0bbf4804927735cfdcc37ba3c75967`

```dockerfile
```

-	Layers:
	-	`sha256:f1a6926d524e4a98cdf6233f7813e210a7a5636ef488832ac25ee299d8dc4181`  
		Last Modified: Tue, 04 Aug 2026 01:00:09 GMT  
		Size: 2.6 MB (2647318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c053bfa072d6003eb95038da88ae6e48089d1fc1ca38594bda3affbd237095a`  
		Last Modified: Tue, 04 Aug 2026 01:00:09 GMT  
		Size: 16.9 KB (16857 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:08d7e731ff48e454c3df9b05777570dec84fdf7a2db8d0f349593283f910388e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251501006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2affb232bd7b94ec05c76da69633c04748e4e05b45c93182917e879056c1dcb6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 00:59:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:37 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:37 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecae93ba002bab3ae3fefd295142b96ce057f92be9b15899ba93bb8563575946`  
		Last Modified: Tue, 04 Aug 2026 00:59:58 GMT  
		Size: 3.9 MB (3852814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f0705be558e372c5e9099c0598568816590f8c7ea7cfe47b28d880e7896c4d`  
		Last Modified: Tue, 04 Aug 2026 01:00:02 GMT  
		Size: 219.5 MB (219530937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:08ea7d66e1e52abc539f6f1ae297c9e12c1f2b09b644edbd522e39253e5a68d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da304792aa362ba3d4ae08131eb108a0602ccdaf4a2dde374019b77b0739b02`

```dockerfile
```

-	Layers:
	-	`sha256:606e778cdeaaf5a9cfc24722dbc8898a6bc12005504c95b2d74a63d78ae17bf6`  
		Last Modified: Tue, 04 Aug 2026 00:59:58 GMT  
		Size: 2.6 MB (2646952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be737892000416b25ccfcefe7ac66a3e853bc1a6568aafe051702d2f4062fdc`  
		Last Modified: Tue, 04 Aug 2026 00:59:57 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
