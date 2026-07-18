## `openjdk:27-ea-jdk-trixie`

```console
$ docker pull openjdk@sha256:faddea556e69ff1721027b4da0bb5d28ed74bb63c6650a613699e79898452b9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:ff9e8a7249667ebd59a392ee53a5166f2e5572b041f6e72eec1014b4e9510a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385925723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc485824d43c5dc6403298318e7e1be59bbcffc0dce41aad1e7c75bf064bf0e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 21:58:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:58:49 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:58:49 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:49 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:49 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3187ce98170533a9d4b35de239c1da5ffdc7ce7616fadbe1f35af6c8daf64d`  
		Last Modified: Fri, 17 Jul 2026 21:59:14 GMT  
		Size: 16.1 MB (16065869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb821ca00bf1c60d452e6fe1f8d14fbbb26a3fb02c1479b0bb183bac15ef319b`  
		Last Modified: Fri, 17 Jul 2026 21:59:18 GMT  
		Size: 227.1 MB (227115825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:402597bbe9758524980d4e830fd927a32db17dcf6fc1147a13998deade02f455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772d2e75f29742b45fd2db2ba0e2fd7a47cf8dc202040469633afb3356a9b13a`

```dockerfile
```

-	Layers:
	-	`sha256:aa44a993956103a8c162110bdb5541c6f54c8ab41a3c6020b28a1c27a5309df0`  
		Last Modified: Fri, 17 Jul 2026 21:59:14 GMT  
		Size: 8.5 MB (8508985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc2a61a5327c8689e9eeb0385072285c6f5bbebd937365987cc4ef6236e1dbb1`  
		Last Modified: Fri, 17 Jul 2026 21:59:13 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:649d387035f1bf5f7cfae4585d4243f9226f6e4f0b5a636d39a44710293e03fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383478147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb40fcde0e34b8c7f71154cc43690e2533db52776ea6024a55999e2ffb15a979`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 21:58:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:58:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:58:29 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:29 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:29 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ff8060f685afd4d20db95a391bafd5cd052a506e4d2fbce5067c0779badab6`  
		Last Modified: Fri, 17 Jul 2026 21:58:55 GMT  
		Size: 16.1 MB (16071388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f12342dbea87bf8501f4ba576dd18b623b3d7d900470218d324c35f9a096de`  
		Last Modified: Fri, 17 Jul 2026 21:58:59 GMT  
		Size: 225.1 MB (225110101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:53ba04c699957402a1378d1d71f7e2af69e08cff270ebf008f8f3543909d2c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11869ce0b614dfc4f422ad27a1bce0e272e77e3b7669170bd6e4cf17fa8f3a17`

```dockerfile
```

-	Layers:
	-	`sha256:a023a7daf88d9c51a02c62a2882b2a0dab961f3c1f8b101db1d27194301cce67`  
		Last Modified: Fri, 17 Jul 2026 21:58:55 GMT  
		Size: 8.7 MB (8703138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb9b570f0740a13979d5266e00a4e3813d7142dacf2f102c583ada9223a1c6ae`  
		Last Modified: Fri, 17 Jul 2026 21:58:54 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
