## `openjdk:28-ea-bookworm`

```console
$ docker pull openjdk@sha256:6c67f0c70c7a26b091f7ea4f0a3a092f623e38044a3830d27065f66f55211af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:b80bb7c7603039ebedc65ff57d543f6d09e458b4c87237df711aa562816369f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.9 MB (398934756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc30f6212e61c2885c5fea014cdbfe262cf0d9e0c9cd51faf81cba58f7e8604b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:56:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:56:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 22:56:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:30 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:30 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2104be571f261b76a26090dfd2059f8f081ead5d1f53babedcc98fedabba81bb`  
		Last Modified: Mon, 12 Oct 2026 22:56:55 GMT  
		Size: 16.9 MB (16949958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103cc3f1bd78d8c62d51641de59afc77f47f48ef020423555cd20e3d539055e3`  
		Last Modified: Mon, 12 Oct 2026 22:56:59 GMT  
		Size: 242.9 MB (242876456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9d264c4a98288d16a9375c0768fdac2edeb9ec26135884b7ed1ac2020e197841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d67a9186b1274b85e1597e027feb59c18bd95ef882243f43c87402d995dd717`

```dockerfile
```

-	Layers:
	-	`sha256:3e5407282fb511f25ec1ee5d0f74627a11a6d79539519d075225c5f85b1906ac`  
		Last Modified: Mon, 12 Oct 2026 22:56:55 GMT  
		Size: 8.7 MB (8674140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62344b5d0bb1387fbb53d1e9007d206631f31c856b525331e10443deaabe6ff1`  
		Last Modified: Mon, 12 Oct 2026 22:56:54 GMT  
		Size: 17.9 KB (17938 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8c4d1884523d161ac60aa46cfdd20cef83db04cede0a8df4d7f544787ce7f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.3 MB (397259448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c199dc27cff6d6b7e51888ccf047c6f8d2470089be46bfa61cb628840d4cfe5e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:56 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 23:05:56 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:56 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:56 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:56 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f09ceb2dfa2bfd414db1fc28e34ca7554261e728cd5b8e0778d85e4f91d5a02`  
		Last Modified: Mon, 12 Oct 2026 23:06:25 GMT  
		Size: 17.7 MB (17734174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c179dea357fa1e26b1baa3dddea28e3090179b455a9ae6799e990cba735faedc`  
		Last Modified: Mon, 12 Oct 2026 23:06:30 GMT  
		Size: 240.9 MB (240911638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4bd0ee34b01bd0f5333b190fec9be53a3bd45c2b5f74b66766f0a4cec2fd4cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9e0155c1d2d932d49c3cfc458ba5403f9700da79f89441973b1f94cfb169b2`

```dockerfile
```

-	Layers:
	-	`sha256:47bff976b31cd6c29f0a3126984cf0d556984c0894d24a476c65216d2e83656e`  
		Last Modified: Mon, 12 Oct 2026 23:06:24 GMT  
		Size: 8.8 MB (8810985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63459ccea0ca817021a79f3afa1e2c8252d23b505961ff232c4a292e6c448623`  
		Last Modified: Mon, 12 Oct 2026 23:06:24 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
