## `openjdk:28-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:6c844f23356978ea714b4ceed0b68a7bd9f84342a6ec3ac70b893675f9f4f40b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:f166fb4fab228cea8138341703a4be415cc58ec767d623ecadf23f1dc5e3f61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259959564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce1d8f0add658946ea3b3ce1f3903ab8e38fb2810c611140e36090c63c17ee6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Mon, 27 Jul 2026 22:09:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:20 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:20 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:20 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:20 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:20 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9fb2f00ac013cfedec9ee018d329565920eb04f8f6663c80e64c87fd8e0c16`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 4.0 MB (4032979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c430f02514fcf8a1d968acfb3f42898ad31974bf58eb4b5395afaf3baa2b2fce`  
		Last Modified: Mon, 27 Jul 2026 22:09:42 GMT  
		Size: 227.7 MB (227693942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:542370dc205e1085d05df8ee7e973b2f56178c71543f781988c4199a59f72cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8e129f524c5705e62f0ad91e0b1274dc19347f3135bff3c47a724d9d41c6a5`

```dockerfile
```

-	Layers:
	-	`sha256:3fe25a7a34860107ec4604fe2bee42f84d0023618e48e8baa612a4278fa6bf16`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 2.6 MB (2647318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b16387ad329283106c36bf253ffb4bddb32cd1d4da8b042bc0011af8d869f6d`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 16.9 KB (16857 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b00194fcc160088353b428d9900002a3c31f5aa7674549e4d2729656ef43ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257727238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132aa7a6b03e471ec72b5e095ed14647f9d70d89b1d950f77719e72973fd624`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Mon, 27 Jul 2026 22:09:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:34 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:34 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:34 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:34 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eabf2d7ba0e3baeeb7c6d2e011fe4b65807cce5e2374868281e570e54755a7a`  
		Last Modified: Mon, 27 Jul 2026 22:09:55 GMT  
		Size: 3.9 MB (3852826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ca0e7efc10799856d0db9f06603920854af33751d48f76bacde11d0ed19a61`  
		Last Modified: Mon, 27 Jul 2026 22:09:59 GMT  
		Size: 225.8 MB (225757157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:64561984003e11381a302f7e1ac1c866853230b8a208592a9e20114fca90afbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7388e5351c3bd4955abfccf50e64db07381bfc34bb213d8bfc6b3306382dc9f1`

```dockerfile
```

-	Layers:
	-	`sha256:1d582ac84b7e9ba0bac6f14ef2c9a6477f8a4a5674c56c1643e965273228ccfd`  
		Last Modified: Mon, 27 Jul 2026 22:09:55 GMT  
		Size: 2.6 MB (2646952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004304bce35a2501559ad3889611271fbc472b8577a73bca136e525480abc7fe`  
		Last Modified: Mon, 27 Jul 2026 22:09:55 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
