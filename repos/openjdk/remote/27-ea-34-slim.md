## `openjdk:27-ea-34-slim`

```console
$ docker pull openjdk@sha256:51aaaaf85a0f4916dff7e464e18cc47c3b8378448b638492efe1dec002059817
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-34-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d6c3a110bcb096267921f696f65ab1933ca80fb9949c41dae7b0ccea93a8888b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259346822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1504abda67a842a835e8eb2285b346866fbf3d5b75e48213160f821310afc2cf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 23:33:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:43 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:43 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:43 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:43 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aff7d95bf5e8ff5ca228872eb6a239b7f2cc6cd9ecf5340c4e062babd85c4e2`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 2.4 MB (2371347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9c65ae01e2d05be36154a4521c3cc163ce9b8c7c3aa259d1f6dab89b1cb898`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 227.2 MB (227194710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:168552bbe2b9f5861f9213e441c652d467c3fd9fae7bef3a5667d63088b0c820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7290d173d6e454076eaf7264d7775342fd3778fde26605884ab984bb40cf53c`

```dockerfile
```

-	Layers:
	-	`sha256:7de360f77dd5086e46f205b0100f7193c7e316aab458aa4108f5b50c69798eec`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a6171b61204fed756819b185be41a20065735051bf16ee3dca32692a74c165`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1d9af36d585cd97eadfc19a6abb27835edb4b444f7cce79475ce0d5747094b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257616835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463c141ddc0a24c3a0e633fa8ae8bc95b053046db81bf5fedaeb925e886c8cb8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:41 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:41 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:41 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f8cf0650c647b7c8b1e6ecf074165e141c85ae747ffd651cd3def30d2e0dec`  
		Last Modified: Mon, 10 Aug 2026 23:34:01 GMT  
		Size: 2.3 MB (2314623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0913d4c3839f9e25f2f5ac580bada56296ba5e5d00412fd1ab0922453b89eb1`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 225.2 MB (225158603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:f9cd7e29daed2a42eba81f344242b2bbe29a4a748de6ffbf9f0d7548c12bb5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bdd94a10cec88c937bb0d3869ce8676b7bf293aa826780298c47b00bcfb581`

```dockerfile
```

-	Layers:
	-	`sha256:f1336d7d82da7d7f4d654001bdcd2c2547f802bc822af28a35f640d95b746137`  
		Last Modified: Mon, 10 Aug 2026 23:34:01 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b8256fa38c819e4a8d8677a1f2ff09c0048eec5d083716e01a561ad37af645b`  
		Last Modified: Mon, 10 Aug 2026 23:34:01 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
