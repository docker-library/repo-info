## `openjdk:28-ea-18-trixie`

```console
$ docker pull openjdk@sha256:810f1f48a8140f185c40c3c946909f818bb6f026152086b939cf20257ac3bf48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-18-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:df8e5c3da507c5dd3b9e9b452e12d47c3bea294cc875e5f0dbf6317d5088f372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401866242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798fedcd841d35757709479860a4cc0883133d4a8bf758e7b1c0e8fbd556ea64`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 23:38:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:39:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:39:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:39:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:39:09 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:39:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:39:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d47a8ba5287e45166b72373f9a7e8bf2489e0648c13b0af6e32f9ec6aeb97e`  
		Last Modified: Fri, 02 Oct 2026 23:39:35 GMT  
		Size: 16.1 MB (16068008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74716e03af82b6aa3aa990926248f3ad4b3fd6f645cdd43053c462b37fb23ee7`  
		Last Modified: Fri, 02 Oct 2026 23:39:39 GMT  
		Size: 243.0 MB (242970975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:aff96a946e17711ae18f57d9414184486ca66edc91fbee248f2b3bf88d180732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8539301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5744e72e3724aa679db979961345e2e7bbe0260ebda1bc000621a5b919e96eb8`

```dockerfile
```

-	Layers:
	-	`sha256:1acca5b1ce0e16717587759c2ec16f96ae4ccd79b7a3a19c07536bf7da781b15`  
		Last Modified: Fri, 02 Oct 2026 23:39:35 GMT  
		Size: 8.5 MB (8521388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db7ecdfbeacef8dda894657678ebf9aa5ac1bf09ab7302ee72a3b14d83ab2032`  
		Last Modified: Fri, 02 Oct 2026 23:39:34 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-18-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:51a84fe53faadcc6942dd23cb5e81792991369ebfa657cda5c3d5a06ed8be1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399509325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa1cffd4b28602d1623511cb32659017d41b8aa937d176b3dc2e7ecffb55d16c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 23:38:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:38:58 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:38:58 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:38:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:38:58 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:38:58 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:38:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753769b83480c5f8b520efe6c39fdbae7ff3f86cdc4f46b1bfa516dd4434ced0`  
		Last Modified: Fri, 02 Oct 2026 23:39:26 GMT  
		Size: 16.1 MB (16071434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f049a6ae0f6485acba222d8c1c7688480129bcc6ae179d28ddb1576afcaf04c4`  
		Last Modified: Fri, 02 Oct 2026 23:39:30 GMT  
		Size: 241.0 MB (241027835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:2c3834c596745c195c397feda0222848279f0d289f9c14f005c8aee4f0319a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b9e29394f09e9820ae0870b77a74a3f63fc725da07bbc45a6a3eb9b45d392e`

```dockerfile
```

-	Layers:
	-	`sha256:e8014d11ebcb389933160307ef8575f80737c46045f1e8d0436b3341fdf619fd`  
		Last Modified: Fri, 02 Oct 2026 23:39:26 GMT  
		Size: 8.7 MB (8715541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3086d98b7400950399d6dd1eda1e7796a7299e8664a9876022dd7e01122f6e1`  
		Last Modified: Fri, 02 Oct 2026 23:39:25 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
