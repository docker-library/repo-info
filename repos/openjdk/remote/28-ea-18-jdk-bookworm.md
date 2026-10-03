## `openjdk:28-ea-18-jdk-bookworm`

```console
$ docker pull openjdk@sha256:fa78b5d419af80d63817b510c3f57ee2de6f8c6f2ac33839596dea597b6736fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-18-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:a41a4108264779cb15e90efd82e6f43b5721b15fa52d1f6cb8834b82d2cd072e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396904757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8782ad14ab349780c539d5f372f727aaedb9d95a597409ebe1b4321d66c1081a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:39:47 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:39:47 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:39:47 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:39:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:39:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3487fca8447cd0a3698a062016dc3e157e4b2b00b0c2d0b92cbebe5bb6f79e48`  
		Last Modified: Fri, 02 Oct 2026 23:40:14 GMT  
		Size: 16.9 MB (16949587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b4ca5202c6645ff07b78da38ef5a54bed61e1bffdb3b9aafcddf1a2d04b4ce`  
		Last Modified: Fri, 02 Oct 2026 23:40:20 GMT  
		Size: 243.0 MB (242971382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:44f953212298fdf2a44136da5ee046a5d07212cc21d86f8eb155e56cc1d5a29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8784bfcefaba18dbd3db4352bb781b40e9518b2052eb66e5d5ac59d5f01ecd`

```dockerfile
```

-	Layers:
	-	`sha256:bdd481dd831bd85ac65593693490cfee34991715dc2a884aa32afaa8c3d75453`  
		Last Modified: Fri, 02 Oct 2026 23:40:14 GMT  
		Size: 8.7 MB (8674140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d087432a2cdd904a40295b99eba9e722008e78b0d3d4716b2080211fc97e3a1`  
		Last Modified: Fri, 02 Oct 2026 23:40:13 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-18-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b8dc6945a87d2597669ab505906651521f9d763478c06c388415abef69cc56dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395279303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f31dd1cf20b7885a80ded9ec5a3aa96b249d0d3007b2986a3c9fc05c190a64a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:39:14 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:39:14 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:39:14 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:39:14 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:39:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c66fc206619e1ce8331c3d18e903a92391a66a59690f57423451f99577925cd`  
		Last Modified: Fri, 02 Oct 2026 23:39:43 GMT  
		Size: 17.7 MB (17733919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cc961ccb1a551e4ae3a9d1ac78b1c85f0be87e0ce41b1dca8def59789c76a`  
		Last Modified: Fri, 02 Oct 2026 23:39:47 GMT  
		Size: 241.0 MB (241027645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:de1f0f5c4565573b513a19548cdc4984e727cdc6c752abc1e1796119daa6c769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58202829ec8c531d49c94abf9f2a5fe5c967f6ed7bcc124b21390a54e5144e92`

```dockerfile
```

-	Layers:
	-	`sha256:6710c44a0091751fac6e7f4b7d518f6cfecb833340d155a77895d0cc8e102b79`  
		Last Modified: Fri, 02 Oct 2026 23:39:42 GMT  
		Size: 8.8 MB (8810985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58de25af99dbec3b592c8eb63e909ea029ce06fb01d058aa2a5665e30b798b47`  
		Last Modified: Fri, 02 Oct 2026 23:39:42 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
