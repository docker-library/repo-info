## `openjdk:28-ea-13-slim-bookworm`

```console
$ docker pull openjdk@sha256:04104bae9eb0785f94e580ba4c2f126ca0cb1f4ddd16dfdda34c7a2165f66ced
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-13-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:0e53921b07e256d726f884ce69a67ac7e135dee98a13d5f9d8a3407cbd733bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274971085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a92d36effb6bacbc72c89a656e098f7281daf5bf1c0412bb0dfc6794dd32273`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:28:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:28:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:28:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:28:37 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:28:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:28:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfd48143405a05485487465bf7a70c65ad0ce92a1bce487afc6414588d7674d`  
		Last Modified: Mon, 31 Aug 2026 19:28:59 GMT  
		Size: 4.0 MB (4046381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d11800998351f55aeab411f137a6cc2011e23146c2dbb30502ade8dd5e8c8`  
		Last Modified: Mon, 31 Aug 2026 19:29:05 GMT  
		Size: 242.7 MB (242692049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ec253d9afb79dbedd6b4aaf9099d38edbe8df56dd0e33be921dade786186e687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbe764a0cd9bdc41e8ff93c224f6698b49c403d2da6529a8952650e7534b021`

```dockerfile
```

-	Layers:
	-	`sha256:de577bc56f2015f889ee72afa6b244734cf8df3cc623fe076ab4b1ecef6a7de8`  
		Last Modified: Mon, 31 Aug 2026 19:29:00 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d633d68e730b5d3592f5ed5e7ae0773618e1a0a4d7410e8c8a17bd8c2ad68c9`  
		Last Modified: Mon, 31 Aug 2026 19:28:59 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-13-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8e9df20d8ed6de2af3581c5c6e52e5fb80be5b5211594fa03ee284d9a859711e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272754358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22929d9cd72c39f4969bcc5a4859feb0baa68ec94acc86cf1625a460787d0b4b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:45:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:45:47 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:45:47 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:45:47 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:45:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:45:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f5a7b7f2ee05e7dfb570f828daff82d2c87f88a65a488207018e6dc3e3ebce`  
		Last Modified: Mon, 31 Aug 2026 19:46:10 GMT  
		Size: 3.9 MB (3861342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1ebfaca5ee7b9c208a56cfc6c4770d02968c2037b4149dff16564a8ab1209c`  
		Last Modified: Mon, 31 Aug 2026 19:46:16 GMT  
		Size: 240.8 MB (240775727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:07dda655e27475e92f4a05ee4403019b1937b5d03316af5f1ec0aa01e3279f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1546a788ce19892736eaef45f382e94ba357fbce019bcd8a4b7cbd9779f5ea92`

```dockerfile
```

-	Layers:
	-	`sha256:db2c46d0f11018cc1ee2da434b030af2d2d3864d36a01c5e41e9a4b58a009df5`  
		Last Modified: Mon, 31 Aug 2026 19:46:10 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d09146e79c1d49976bda41a5c6c891345710fec24ae44d05f2efb7609cb3d55`  
		Last Modified: Mon, 31 Aug 2026 19:46:10 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
