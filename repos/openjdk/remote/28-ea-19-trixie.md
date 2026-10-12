## `openjdk:28-ea-19-trixie`

```console
$ docker pull openjdk@sha256:ee8870bb1b5c66dd959e06e2e06278993a177fe15df4066d4f02c1f6405a7345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-19-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:38837f1b66154e70e0d5d30f39a5f3358c78516dfa24a8abb458ca472978cb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401933245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f80d47b4e151a1dea43e672311954b4bb41e85d3d5af9eef4d675d203223502`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 22:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:56:28 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 22:56:28 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:28 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:28 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:28 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba69644eacfd4eeecc5399964b46e674da932b337fcd40750246eec5b842087`  
		Last Modified: Mon, 12 Oct 2026 22:56:53 GMT  
		Size: 16.2 MB (16216273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f0fa3e0149fb4b107b29075c56dc66df25db8e66772349392eafa186a9efc0`  
		Last Modified: Mon, 12 Oct 2026 22:56:58 GMT  
		Size: 242.9 MB (242876335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:7da04bb63bafa3e37e469a2b285ea6fc27061a164ebfd1d2d295cd57cf87db24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8539301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b517ed728a5a404b3bdeb8906b08e80710911c14da90a183fa147f33595e5b3`

```dockerfile
```

-	Layers:
	-	`sha256:999162c5eefda8a03d3eccec409582407a3f3bb6d14c74cc601f79b27402f27f`  
		Last Modified: Mon, 12 Oct 2026 22:56:53 GMT  
		Size: 8.5 MB (8521388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d3b5be928381659287c0ded8acec157fccd127982ba9a4f24f0f775ee9e71`  
		Last Modified: Mon, 12 Oct 2026 22:56:52 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-19-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1990466774c5f7056776a14f4c03bacb0469aceb7fd0aa44e26de6e4f70a5d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399548594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b177a413146067830b140e35025f1c5ce72383ea84ecd9733c87cb10746d1f3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 23:05:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:54 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 23:05:54 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:54 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:54 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:54 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f51c8a9a7935ca0392884b57f5c70d1fba504a1ad37463214de2205026fd8d`  
		Last Modified: Mon, 12 Oct 2026 23:06:22 GMT  
		Size: 16.2 MB (16214513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffca78cfd08e1757c6cd38375db1e4f36aa87916337a74fd0795fe5cee04773d`  
		Last Modified: Mon, 12 Oct 2026 23:06:27 GMT  
		Size: 240.9 MB (240911704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:60fc178303b88a9e88a9b54a49da0b08cf8e65e53c9774295634e834cefa773f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f154fced32945dc0f96f0ffee057947492054f190e7dd0dd7fda5c17656b70b9`

```dockerfile
```

-	Layers:
	-	`sha256:1c67c9afd1b3c5d79c7ff8c4c15ab860a95cc26fe666368a6e9377e31e290b87`  
		Last Modified: Mon, 12 Oct 2026 23:06:22 GMT  
		Size: 8.7 MB (8715541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebf13c83ba3bee4cae81f4f0e3e455620cd96a9adac28929826aec7bd173fd4`  
		Last Modified: Mon, 12 Oct 2026 23:06:21 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
