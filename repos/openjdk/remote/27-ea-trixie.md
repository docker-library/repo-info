## `openjdk:27-ea-trixie`

```console
$ docker pull openjdk@sha256:84f58778f1790607aacecec79676ea4ca6ebda2f9fc37b03c3b0310ebd89178b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:796dfe7298186bec436a4c0f09c0fb9d11ecf4242ee90ae476fa61a7da92bdf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385956332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d61c5716c6cc47dab44f4fe50c48e7525818d506ea8419daf9f76e88f625263`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 27 Jul 2026 22:07:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:07:12 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:12 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:07:12 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
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
	-	`sha256:f94ebcfa7dd358a6d9ead0e9cbf1067267454bdf123beae9724fb0792d923cef`  
		Last Modified: Mon, 27 Jul 2026 22:07:36 GMT  
		Size: 16.1 MB (16066113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237861dad41178129530ed45f5aa4bd49d55ee23a500d39a81692e9be87e569a`  
		Last Modified: Mon, 27 Jul 2026 22:07:40 GMT  
		Size: 227.1 MB (227146190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0976809f725829e0d355532755d7f9e75d9b7286f738ce3b6719a8deb98f2659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845689a2d1ea793ad877cf397783031f5cdcb95ee5b076e7eccef135c573d79c`

```dockerfile
```

-	Layers:
	-	`sha256:324fc415795c5e108f5efe9312db73ce6ea0027a03265f83b94519d7f8839e14`  
		Last Modified: Mon, 27 Jul 2026 22:07:35 GMT  
		Size: 8.5 MB (8508985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19788b3d1bae7972b82cdc6b1d1145030e83b58f6706a6da6b9d15f7976ee4a1`  
		Last Modified: Mon, 27 Jul 2026 22:07:34 GMT  
		Size: 17.9 KB (17912 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:08737d04ea1cbd50b0c0f6df15ddeb4ea2b82af94ded433cde2b93b85126d75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383483126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b132e05b459e4142431b4894588f3e7fcfce8d3ce1945d0c3a5775e100c2f446`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 27 Jul 2026 22:07:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:54 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:07:54 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:54 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:07:54 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:07:54 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:07:54 GMT
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
	-	`sha256:fc8fce625b0c7faf2d33194451bf339be91b2288d4ae67f6277dbe2fd26f50e1`  
		Last Modified: Mon, 27 Jul 2026 22:08:20 GMT  
		Size: 16.1 MB (16071464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d1354e44e6374f5f6e1c4f8f5d554e1bfb69ce327188de23c4d2b161b1aac2`  
		Last Modified: Mon, 27 Jul 2026 22:08:24 GMT  
		Size: 225.1 MB (225115004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0570ddb10da60e49177d0eb7581e80b06bad8677305f066204c7e5e6990bb0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc9ca87f5240f0d15db11e84c34101ee2554e5e3ce21c1cb97f32c243dee2a9`

```dockerfile
```

-	Layers:
	-	`sha256:8b40a3c9e5417f3786db854e984758a44628e65ceeb81d8642ea1edc5444ec6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:19 GMT  
		Size: 8.7 MB (8703138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b2e0a51e56d564f1db8c92aae2d9f22ec4c874999095eeceb42ac014a9d5287`  
		Last Modified: Mon, 27 Jul 2026 22:08:18 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
