## `openjdk:28-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:b140b23f7cb239e1216eaac3c55249f86dc7491726ee7267ef7e24892bc1a20d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:d01c548fafde20dee3d481aa70afc7c32d4a386f78b496822acf832d829bd54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275232632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150f59c6d639cd1eae2677324262fd5dc2b559398e1de2f535e8500968c64403`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:03 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 00:49:03 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:49:03 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:49:03 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 00:49:03 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 00:49:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03feebb21c3645f4fa13bb57cc0dfff9dc3e1ec03f59c2be4cc7b4128c4e4ecb`  
		Last Modified: Sat, 19 Sep 2026 00:49:26 GMT  
		Size: 4.0 MB (4046355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a940ae246a79813e141656113fb41912f7d52b5eb5c601abc8564aa696d35c`  
		Last Modified: Sat, 19 Sep 2026 00:49:31 GMT  
		Size: 242.9 MB (242947834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:38ce79fb9c33b817f273cc03ec4022b13f77517f7bc2b18967f0dfd3f1bee2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7658e127034a3a942db411348851115f27d72c6fc2fc183b283fd06ebb68118`

```dockerfile
```

-	Layers:
	-	`sha256:f4d62a55e2060bb09b3bd92eddfc7ccb06d2850e109ae504edf3d353308c6302`  
		Last Modified: Sat, 19 Sep 2026 00:49:26 GMT  
		Size: 2.7 MB (2655777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3784a7567d3f26ea2217a28c54f4b389855c02ec41d579bd8d2d04ecfd2c988b`  
		Last Modified: Sat, 19 Sep 2026 00:49:26 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:41b25e7eaf4b277533d0d8ed8d1a02f52b7bb94621637710eb0a8487780aafba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272978745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d2b69a8cfc5c63c908fb8dd361fd320a98214e1c336836e6b1d57c8a611e85`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:51:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:52:08 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Sat, 19 Sep 2026 00:52:08 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:52:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:52:08 GMT
ENV JAVA_VERSION=28-ea+16
# Sat, 19 Sep 2026 00:52:08 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 19 Sep 2026 00:52:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d53e658e250f807eccbb9681d38a0ccda3b572baf4a3b0834aee73f1d73cc2`  
		Last Modified: Sat, 19 Sep 2026 00:52:31 GMT  
		Size: 3.9 MB (3861335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab8e4e452ead762493c7056ffaa73cc9969a0c88b0522d1ff9e0833ebd84a58`  
		Last Modified: Sat, 19 Sep 2026 00:52:36 GMT  
		Size: 241.0 MB (240993730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:bd594b0caf4bac05a6b2e5d17756acb85c17d4e6feb6497d4ac70fa926ea209b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb1d33f330ee2d54b8faead9df7fe7183722c33603bd0f54dcc48f4823ab1`

```dockerfile
```

-	Layers:
	-	`sha256:7f8d99d0d59791e740dc9825dfa4821951e271b36ba68d3ee497bb0f6ff1610e`  
		Last Modified: Sat, 19 Sep 2026 00:52:31 GMT  
		Size: 2.7 MB (2655411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59e548480faf238b421f98fa0da45864b9679eb5e9f2b49ede74dda6b845919c`  
		Last Modified: Sat, 19 Sep 2026 00:52:31 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
