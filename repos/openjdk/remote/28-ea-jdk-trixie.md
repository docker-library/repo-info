## `openjdk:28-ea-jdk-trixie`

```console
$ docker pull openjdk@sha256:9fab0191cb6eac299484cca9d6649093d34d3d109ec410000f7962c34e01dded
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:df8752683a7cb8cde4a2fa3b506feca51ddff75125d19a02cc786a0ae044942c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401742586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71379ed162c05401f9deea1d0f5bd721c197ad95ed9f311f367de73279310b26`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 18 Sep 2026 22:29:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:20 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:20 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:20 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:20 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:20 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92eefe00d92e73afc6c961e017a476804ad5bd0ba8bb7d26afad7fcef5aa54d2`  
		Last Modified: Fri, 18 Sep 2026 22:29:46 GMT  
		Size: 16.1 MB (16067570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42df9164c313f544b9755573218c0a236aaed59f999abbb2356013ca338772e`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 242.9 MB (242897524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:c3ef4f9ad92565b09a327c7dc14a2ccf50ce727eaaa6a964c161fadba56cfa2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8534357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7321259ff715c0fda80e37abbfdc9c6b9c7e7becca3b2ef928e139a12108c2d3`

```dockerfile
```

-	Layers:
	-	`sha256:651e8a7143e1e11a0db018dfd53b2d2e70d389fd069ce333c5bd1fa06e5bae2e`  
		Last Modified: Fri, 18 Sep 2026 22:29:46 GMT  
		Size: 8.5 MB (8516445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:908fc127efdad7fb72d9da62c7ecea6e3e1b6f9e9405055285ce10b49b4097bb`  
		Last Modified: Fri, 18 Sep 2026 22:29:46 GMT  
		Size: 17.9 KB (17912 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:505fe50f6d6688d1e1a06605bdb87dfc181d936fdbaf5a3209bcb57afb3ba1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.4 MB (399351564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6afd270e6007bd456b6a4693878cff5557bf423f0c7d259fb3f29c8ff6333`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 18 Sep 2026 22:28:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:29:04 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 18 Sep 2026 22:29:04 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:04 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:04 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:04 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1007f57888587cfd31828140034b6c360004bba05ef16936c0f942e63067f1f0`  
		Last Modified: Fri, 18 Sep 2026 22:29:33 GMT  
		Size: 16.1 MB (16071229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76059a835c1ba3caf78e7757d0157d38b45221794dac90e89ff89628db2ae348`  
		Last Modified: Fri, 18 Sep 2026 22:29:38 GMT  
		Size: 240.9 MB (240943035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:22c77d22209d319cb9fc06741f754b15eed28074cb30b338f661f214580e1105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8728630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c71708327cf4d36f49d1c6605e0003764b6396c74b8b24d57ad08fd8cbe679`

```dockerfile
```

-	Layers:
	-	`sha256:eaa746ee2ff379f4c8d0f5c56dd48f464c95e1011b3f2a31f55f0c84f30a1c5b`  
		Last Modified: Fri, 18 Sep 2026 22:29:33 GMT  
		Size: 8.7 MB (8710598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92cc19796a4cfe6ca0974f823ec3b66f05ad09df021690df4b43bd9246e088f7`  
		Last Modified: Fri, 18 Sep 2026 22:29:32 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
