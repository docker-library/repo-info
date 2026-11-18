## `openjdk:28-ea-24-slim-trixie`

```console
$ docker pull openjdk@sha256:dda8833fe7f0a50e2bc6dc3e2a991b33824d1a5313fe42a31de5ca450f7af401
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-24-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:57dca520ebcb54307ce4987f9c23c49593b6be8420cfee33fd562b3658441880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276837664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3992eb793b7f580e60de41af2a3a66510346b9a3688b22cee3bbf05178643ab6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:44:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:23 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:23 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:23 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:23 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25ce9729d25d83485a4dab2a17325b54bfc646f6863a3ba48af2b562705cd05`  
		Last Modified: Wed, 18 Nov 2026 21:44:45 GMT  
		Size: 2.4 MB (2368512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b495bbe69afc2bb50a6bdfe3b4107f26533f34d89dd059b9eb15beb6e6c94fda`  
		Last Modified: Wed, 18 Nov 2026 21:44:51 GMT  
		Size: 244.6 MB (244613020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-24-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:57b632daffc74fae3f2deb116bdcd7bc5dbd196ae49a39ba2b553f7be4799eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02949ea952a68da1aa51dc47e591680f72ba0bfaf564aaea403d8ba60499023d`

```dockerfile
```

-	Layers:
	-	`sha256:e92f6775ec1b2c1d74b45e30f857dd738dd5d3678f6573c96734ff0dc4818e71`  
		Last Modified: Wed, 18 Nov 2026 21:44:45 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b28e428a33cbcae817bf25b42d12981659da6cec2dd9ad4d31c27179b0a0d66`  
		Last Modified: Wed, 18 Nov 2026 21:44:45 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-24-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8906d9f2c58a674de0178a2ef4c385ed548de59bc2d772f8d32427c7c103bad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275167583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae949525c13fd2d7980e206e4377c044d61163cde5763c28e7dca20a560828e0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:44:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:40 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:40 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:40 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0d05344b7c57afdbf899268933f7df05f1730709768df2dca23b9237a9a3ca`  
		Last Modified: Wed, 18 Nov 2026 21:45:04 GMT  
		Size: 2.3 MB (2311792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51de945d2dbe21b757e186d676295cdecb93aa1e0d0a8febf9ccbdcfeb223d3`  
		Last Modified: Wed, 18 Nov 2026 21:45:09 GMT  
		Size: 242.6 MB (242641754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-24-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:553c05d9f12f2c94ce3fa83a21f75d14f870370939d306ae3e2ec938e340bfbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f79eda4204207f1dc3fc9866934851461b1b0c529993cd902c454973ae3319`

```dockerfile
```

-	Layers:
	-	`sha256:ba674419bfa6d006298500746ac65e25b80eabd3d1577662e5b8e2dcd85fbfde`  
		Last Modified: Wed, 18 Nov 2026 21:45:04 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67ee9e70036d6b0e74061db41f0a1439315f69531b9b24b10621ba46a18bf5c4`  
		Last Modified: Wed, 18 Nov 2026 21:45:04 GMT  
		Size: 18.3 KB (18275 bytes)  
		MIME: application/vnd.in-toto+json
