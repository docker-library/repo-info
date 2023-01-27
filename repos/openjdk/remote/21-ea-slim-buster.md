## `openjdk:21-ea-slim-buster`

```console
$ docker pull openjdk@sha256:63f440439e5b3be07912408a8f9aaca6902ecf0540387e9d79ad792e1ba7af48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:21-ea-slim-buster` - linux; amd64

```console
$ docker pull openjdk@sha256:273bb5da4511cb54bd18156e32654e5a6d73da3bdb993e5d71c934f5764e5062
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229915976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96a27de76167a7410f18040057b8b09e0e2d7e0e1b0ae01521f4696f5f6cf0f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:04:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:04:58 GMT
ENV JAVA_HOME=/usr/local/openjdk-21
# Wed, 11 Jan 2023 07:04:58 GMT
ENV PATH=/usr/local/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 07:04:58 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:21:23 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:21:38 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:21:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828545e8b79db162ad5abac22f03044bd33fdec65ab2de0eab43a39483567a11`  
		Last Modified: Wed, 11 Jan 2023 07:12:21 GMT  
		Size: 3.3 MB (3275922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85464020abe73e3790f3694120d1b6763bd50624f7f6039d7a4670c516f766fb`  
		Last Modified: Fri, 20 Jan 2023 22:29:36 GMT  
		Size: 199.5 MB (199499702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:21-ea-slim-buster` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e9f85ea488852ba481a65771399b89f3e46b93ab1ddfec36d470661c5cc374c0
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (227024881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b5c0092a297498acb72b0f6d712b506f7d933fcafa231d0a870a4fa5e49002`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:52 GMT
ADD file:08addf73dde8bf5ac64e0d9bdd1997ce5f406976c19da431616783c14fdb36ac in / 
# Wed, 11 Jan 2023 02:57:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:33:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:33:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-21
# Wed, 11 Jan 2023 13:33:23 GMT
ENV PATH=/usr/local/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 13:33:23 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:41:18 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 21:41:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:41:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7fac02f4cd2bcf681b9e156a67009cf4609f45447818b52327d93553bfeb2965`  
		Last Modified: Wed, 11 Jan 2023 03:01:58 GMT  
		Size: 25.9 MB (25914925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c3b6f956b3fce7c340f2d003d19d58e27ae60d033838d462212b60d5e10443`  
		Last Modified: Wed, 11 Jan 2023 13:40:37 GMT  
		Size: 3.1 MB (3129360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba2625891ad5b583adf4af8175343a9a65a0b3145da8dfd2ceb27efd92f822a`  
		Last Modified: Fri, 20 Jan 2023 21:49:30 GMT  
		Size: 198.0 MB (197980596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
