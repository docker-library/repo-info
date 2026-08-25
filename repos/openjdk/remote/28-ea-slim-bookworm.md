## `openjdk:28-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:89c59e489e2ef7452019c7e2e08fa6ab1889a6501e55540b182ea9e1e5f94125
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:4f9f2ea97cbb8e93e8d0394b46c0f3c82f57029a7d65970217c9101228eb13bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274970581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6c2b8106f3a96fde36a36f0875bdb39c5b08e4a2c7659083878757a1f0f57e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 00:56:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:56:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:56:19 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 00:56:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:56:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f142898f70c94552152e6ebd685ec4a937808d69eb91c2bca516a68b74c3243`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 4.0 MB (4046335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda68387d8a5374bb7477172a4f672110dd22d12e3f3f40f7b371deea39b6075`  
		Last Modified: Tue, 25 Aug 2026 00:56:47 GMT  
		Size: 242.7 MB (242691591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d701bb77bc4e5c5cce5074377e01545480e6ad515f68d9b1b77600b7f1372543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540638fa590e2c052054fa874d3a63d68c6e8243823e51e518cc86aade6e7444`

```dockerfile
```

-	Layers:
	-	`sha256:f300fac084ed57b4c597946559dabe158ddf9f3bddf30ae3fc9ed5fb5144faed`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baae99b939642113f5fa67fffdefff5c0b52bd6a14341d2ebd319eaa7fcc1536`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:171a22318a03549b63ce71381014c29c5ac55ac7df93bb41e8ce95d3d372918a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272760187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ddca1eda05915e36f962931bfac8017f03621f9e2acfe6a21138ea9ea181a4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:57:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 00:58:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:58:09 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 00:58:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:58:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05306d41dcc5ff7b07bebb6e8c2d072890a380f9bf5a477544e0c043fa45dc10`  
		Last Modified: Tue, 25 Aug 2026 00:58:32 GMT  
		Size: 3.9 MB (3861369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53c050c92a76207b3196abd42688976b0e1a2e441db447773a50b5006707a48`  
		Last Modified: Tue, 25 Aug 2026 00:58:36 GMT  
		Size: 240.8 MB (240781529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:7fa37c2571ff4cc0b844f3ec17a0407101bedb0a7d3b5e3bac53100a1c686a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c90b68742ecf4ee2363ce46401dbe04cff2c7fa4f6c7d8a05bdc6bd64ebb3f`

```dockerfile
```

-	Layers:
	-	`sha256:4a2410cccfdb55b8adc06b6a198e1e9f41654f64295b4e61709f5c11156a24c8`  
		Last Modified: Tue, 25 Aug 2026 00:58:32 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c1104398cf05d099658490e8bd6e259e0afd5a01405f6b9574543fa987d263d`  
		Last Modified: Tue, 25 Aug 2026 00:58:32 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
