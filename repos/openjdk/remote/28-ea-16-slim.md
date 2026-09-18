## `openjdk:28-ea-16-slim`

```console
$ docker pull openjdk@sha256:b8940ccbfe98f770eb77bbf7ed5860628ad695448f40e80f330dc75dc8d7e683
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:83c65cbe276c0651c36eb83baf16e4767d2b0f34b767f83ae0cfc9526e0267fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278074917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1c14934d6009a7d3ce0b7a0c6f75c6c61d508df01763eb731b09a331d4e428`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 22:29:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:19 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:19 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4095da0714c701f16d3ee93db629394652a9ae63704c0d08b8660921ac0596c4`  
		Last Modified: Fri, 18 Sep 2026 22:29:40 GMT  
		Size: 5.3 MB (5337521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1547be2c19a830f8a5d6490353adca7c4d96fbbdc752595db75559681fc463`  
		Last Modified: Fri, 18 Sep 2026 22:29:45 GMT  
		Size: 242.9 MB (242944738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:086093514e3eebc46ad4addae9d120c37dd892299a0d20b02719211905fabaa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7de7abf87c9685738962c6f621d27b2d8dc3045d57b6ae7971c435fd3b1855a`

```dockerfile
```

-	Layers:
	-	`sha256:3419e8f783c07f8695d773c05dac2172ef32e8d2a18c24dd27f67b7db82243aa`  
		Last Modified: Fri, 18 Sep 2026 22:29:40 GMT  
		Size: 2.3 MB (2279848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe426f104a1cc5c3f1e992cac5bb41da4b23ae1877ea5fd50b0f220896badd6c`  
		Last Modified: Fri, 18 Sep 2026 22:29:40 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:01ba73f871923eaa1428eb473222c0ea1ca05609fab9b42ec3ea6fa1b5817d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276798115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2368ad54a354ab5e1cee006af92707c9356d7bb98295273d9dca70e4c233e49a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 22:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:29 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:29 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:29 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853ea93242d4cdfb4878c8afa569f61e444e587fff7974f5c76d8c419befffd9`  
		Last Modified: Fri, 18 Sep 2026 22:29:52 GMT  
		Size: 5.6 MB (5647727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c423df2f86a80b4637ccc320a6b8fa946d51c90978f1361ff2be7e02ab6e718`  
		Last Modified: Fri, 18 Sep 2026 22:29:57 GMT  
		Size: 241.0 MB (240990806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:f9ed4f53350a50564d88f59f7ae4968f85c39d0376f3782c82a22a477d4aa6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4689983f825c7cb430b100c5548b1894a5ecf7fab084e792b1eeb39c37a2b458`

```dockerfile
```

-	Layers:
	-	`sha256:0855285ab7d8f9b333b1cfeb8ec6cba74b3b0c1ede5986d723fe263aa93d411e`  
		Last Modified: Fri, 18 Sep 2026 22:29:52 GMT  
		Size: 2.3 MB (2279526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d4141390ec3632c9317ed54b0123d8c79d8d978443b2c30a5e387c2526c5b9`  
		Last Modified: Fri, 18 Sep 2026 22:29:52 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
