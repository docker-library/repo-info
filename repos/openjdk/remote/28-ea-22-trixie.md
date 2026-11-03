## `openjdk:28-ea-22-trixie`

```console
$ docker pull openjdk@sha256:c2c1311be07f3e453e9180c861aef7d3b4c904da9cf1e2c031abb696351bbb8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:7448a28727420a04115b5a6b3fdce9b5f8c6c77fc37e43c05ce807a3eb1a31af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.3 MB (402278203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52afca4f7852c9b8a48ae7b6cceade4862f407bf80a75ace21cbbb300e413ac2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:59:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:16 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:16 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:16 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc840f990535499d8eaefb1a198c6150f361a8318bb14b508150db4cce41b8d2`  
		Last Modified: Tue, 03 Nov 2026 00:59:43 GMT  
		Size: 16.1 MB (16068468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc28ad4df249502d2f6ae958552240e422c5c4fa3df85c4dd4cc359df4ff044b`  
		Last Modified: Tue, 03 Nov 2026 00:59:47 GMT  
		Size: 243.3 MB (243348680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:21a28a2ee054b753f5f6414f412e8c5dcce1f4fa5d84e5ddd78dcaee55529559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8537248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab716357a11f8ca0b9617030ca08d531fad87889b5f241b6c3c027bd3b053ae6`

```dockerfile
```

-	Layers:
	-	`sha256:9d41ad9091bdf719491b13498b77cb3beaf9449a57e863b7b197ad93f87d9eb8`  
		Last Modified: Tue, 03 Nov 2026 00:59:42 GMT  
		Size: 8.5 MB (8519335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c32d0dc30070a76ae7e8160901d4fd6d0d57f094c834e8396cca3b1129f9e5a8`  
		Last Modified: Tue, 03 Nov 2026 00:59:42 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8272e449c35c566f44ec620539d1485d2bfe006e75fe092b3767857995585595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.9 MB (399897340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0c302b5ed2f84f61b8daecd75bdd58521127a224fccc2abb33681b2df3016c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:59:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:11 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:11 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:11 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:11 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:11 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b7fbce3db0d9e8bdf4cfb5a991a8b291e7add95e1c41d7acef6d200f8f1cf5`  
		Last Modified: Tue, 03 Nov 2026 00:59:39 GMT  
		Size: 16.1 MB (16071372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bcd023af9186cb4d70cac449bb055e0bd5725d34d37ea8558b5e05ec355acf`  
		Last Modified: Tue, 03 Nov 2026 00:59:43 GMT  
		Size: 241.4 MB (241378266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:4123d5657c55a0acfb9ad3492f8b4c3a020bc9566fe47ff9c99f100fee8673d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf8c87f3737bb32820ac203434a403b1e891edb3078f6894b4ff765dec4cd0f`

```dockerfile
```

-	Layers:
	-	`sha256:f0f0a4749d43c8df1362fb4515ec809c04dd6085abe6399481e4e9ab57d3662e`  
		Last Modified: Tue, 03 Nov 2026 00:59:38 GMT  
		Size: 8.7 MB (8713488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ad481b8935a323662540e3fd81de10139ecec58cbfd731194858c8d7a80a98`  
		Last Modified: Tue, 03 Nov 2026 00:59:38 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
