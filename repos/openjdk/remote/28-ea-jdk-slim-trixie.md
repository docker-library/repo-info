## `openjdk:28-ea-jdk-slim-trixie`

```console
$ docker pull openjdk@sha256:16589c1361b2ef9315503ac649387ce910df52c701fd207652f8570db18466df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:a308a568c88b2e23b2c57b03ec4ff321c0ec1afb6b973bd9f74660f5e878b9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279897729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cf979dd3cbb0ef5f4505a89b75cbf74783cccc163e8eca09dd715ab5c6cad5`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 24 Nov 2026 00:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:47 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:47 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:47 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e88b61ceba2f5806b909db962b03b988ecd1ed36234841c7d0fd8484676f00`  
		Last Modified: Tue, 24 Nov 2026 00:08:08 GMT  
		Size: 5.3 MB (5342187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4e1d5b56c100a47b603b99aaeef5e836bafb5db5a1b292138d247b18f8b5ba`  
		Last Modified: Tue, 24 Nov 2026 00:08:15 GMT  
		Size: 244.7 MB (244699410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:86ad162db6910525634f8680146e046ea0b8e75e61caea13ebe4dbf69f01435d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:557211eadf6310f3aec7dc9549a25d12f88ab23a9f92b9c79c5849f81fa12040`

```dockerfile
```

-	Layers:
	-	`sha256:8cc5e8fa94d82ec03cf3d04f49525b60752d29d9ccaf01143a4b9366b4f2d9cd`  
		Last Modified: Tue, 24 Nov 2026 00:08:08 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba93e71968d0b021b9ebb87cdd8673b4250b388843ef02ad428b6f715319fea0`  
		Last Modified: Tue, 24 Nov 2026 00:08:07 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:eaf59b5c7083171ac2b639e958354ea8379f3f23c743775a65e36a2262c45772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278576400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa410c8b464b2a49aefd13cf64057a8c0651dcd27c4fa2ad949076a21c0aa6ae`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 24 Nov 2026 00:07:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:56 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:56 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:56 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:56 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:56 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba63c4cc2f577ae7b112631f186f7e2c24ffcb2973669ea948e25f49698072b9`  
		Last Modified: Tue, 24 Nov 2026 00:08:20 GMT  
		Size: 5.7 MB (5652337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bbe16f9821736c0c4138c2eac019164bf392b006b50f0d95d2fae4f5ddb5f1`  
		Last Modified: Tue, 24 Nov 2026 00:08:25 GMT  
		Size: 242.7 MB (242710026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:18d0e6415568cdcde65374b7f865297789df5bb9933e28d5114c87837c7571fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b59d3fbe0e1700e341f4aab59211f740377ecaa874217546f1d5a688f2354d`

```dockerfile
```

-	Layers:
	-	`sha256:d40514128447c3d18ad110880d945e1d986aedb6741c96f4e087e0b8ef14c5ac`  
		Last Modified: Tue, 24 Nov 2026 00:08:20 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:234c5de2bf3da5f345edbebcc7343e9da81cccd4a50239ff54fdc362e5ca8ba8`  
		Last Modified: Tue, 24 Nov 2026 00:08:20 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
