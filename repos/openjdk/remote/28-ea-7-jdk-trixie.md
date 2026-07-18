## `openjdk:28-ea-7-jdk-trixie`

```console
$ docker pull openjdk@sha256:0c45bbdcdfbe4e9f34176663f500feceff9e188d2523c726cb05cd17cebd761e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-7-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:7a0c5270b2c9f551330d542ccfefaa1fa16b88ea996b5e7bdd7524b4ddcfa0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.4 MB (386401695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489feed343ce0e35a3d6c19fce75967b4d3d89c9a06650fb41f88b67a89e2cb7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 21:59:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:36 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:36 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:36 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:36 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:36 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:36 GMT
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
	-	`sha256:73f3ec81dab6fbac3ebf589a73c5276ece439035c80937673947ea8ba44f9b92`  
		Last Modified: Fri, 17 Jul 2026 22:00:02 GMT  
		Size: 16.1 MB (16065860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28311cb87a043ef963d64101688981df974c3271c6b84cc352a18524daf8e8e1`  
		Last Modified: Fri, 17 Jul 2026 22:00:10 GMT  
		Size: 227.6 MB (227591806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9746a496e0b8a2b690f8082c815b5790814ce135e98538dbef1d82cde826a0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121bd3215ddd8eef0ebc579b707db2df16acc0620e5f19e483c94f40b0ba647b`

```dockerfile
```

-	Layers:
	-	`sha256:21a3582c10cc123dde2946883d7c4642a676caafb74df1b8b2dab8353701dfaa`  
		Last Modified: Fri, 17 Jul 2026 22:00:02 GMT  
		Size: 8.5 MB (8508977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a36427165b8bfbb9784e5865a24a586d29899173ed2b6de533dc510cd1ef0bab`  
		Last Modified: Fri, 17 Jul 2026 22:00:01 GMT  
		Size: 17.9 KB (17896 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-7-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8cc6422b7eab7119e56b32b19bcf2ec25959969aa06d55f0b2395a0fb513e5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.0 MB (384012935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07aacf1f5d848442cb45107d2fd923e8f389c58ab0eed1e7a772f4bc8d9e77b6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 21:58:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:16 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:16 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:16 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:16 GMT
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
	-	`sha256:9178a28494d3e08b160859cfbfe0b5ba3345c5e335635920d09a2f01b979083e`  
		Last Modified: Fri, 17 Jul 2026 21:59:41 GMT  
		Size: 16.1 MB (16071412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2257023813e35c0f59c533ccfc33d66fadcc20dc8cd68bc4d7d4a133f2a8aae5`  
		Last Modified: Fri, 17 Jul 2026 21:59:47 GMT  
		Size: 225.6 MB (225644865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0199f4b4aee021b166668212f1d057b8183640c1cc4a57b532d027da5d70d68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a106a11bb66bf095087fd24a0ac57c588296ff5cc16916f1e3faadb84a1029`

```dockerfile
```

-	Layers:
	-	`sha256:8124608af88aa33b87240052ab48999038abcc0e704423e6e7a61002af5f900d`  
		Last Modified: Fri, 17 Jul 2026 21:59:41 GMT  
		Size: 8.7 MB (8703130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f3561a0af15fad9fca2562e8a15075efffe834e36723f1aaceb864bc064cca`  
		Last Modified: Fri, 17 Jul 2026 21:59:40 GMT  
		Size: 18.0 KB (18015 bytes)  
		MIME: application/vnd.in-toto+json
