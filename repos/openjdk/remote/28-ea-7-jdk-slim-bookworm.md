## `openjdk:28-ea-7-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:0c4c1e9a0c69d75fdabc5b2959ec13d8b739c36008c8ce5bfd9334c8cb7a6ab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-7-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:5c869fedb280b87b8569828a9da8c06ac8c68a0336b6b32e1a116c5f90c0e9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259905012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b26923e622c182eb1e0d5d18c26fc02f48daff191451db43841eabeb2bef2d9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Fri, 17 Jul 2026 21:59:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:32 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:32 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:32 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:32 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:32 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6afe87ab535ac18d6929ad543cb6ed6261766689aa2c6eb13f3fd75c771719`  
		Last Modified: Fri, 17 Jul 2026 21:59:52 GMT  
		Size: 4.0 MB (4032955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e37d291a4a127f843b3e20f6a985594972e17d1f80cee0fcab2cc28e209437`  
		Last Modified: Fri, 17 Jul 2026 21:59:56 GMT  
		Size: 227.6 MB (227639414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a3c1cb2f1fa7e521f1d9a9974d1a2b4fb3de95b8b9c7f22bf5b5110d9dedfb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e86be39b438dcaca246a5aa8b7a0d87a6aea4bd107ecc9966afe986c4a4214`

```dockerfile
```

-	Layers:
	-	`sha256:a5db7883259ec618c19c3a7f0ad4cb8360cc8cc981d740cf34c33f10ec281218`  
		Last Modified: Fri, 17 Jul 2026 21:59:52 GMT  
		Size: 2.6 MB (2647318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8036032a1611bef71d5d80409293a6dc78137f3f63e4dae94dae4f16d2e93b74`  
		Last Modified: Fri, 17 Jul 2026 21:59:51 GMT  
		Size: 16.9 KB (16858 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-7-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7a97cfe73ad869d6b3771bf02fb8bcb5183da1f576987604e6c9d11930581028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257662880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2a7b45b8092fc2512683924e669b05c06ea2ddc20d13df46b104a75ad06880`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Fri, 17 Jul 2026 21:59:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:22 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:22 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48b63c177b7f5c5bcc664509aa012eaae088c5211bb0426dd158a3374f0eec1`  
		Last Modified: Fri, 17 Jul 2026 21:59:43 GMT  
		Size: 3.9 MB (3852866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc90ddb16e366a09259b8d4be696ee9c94a14f275db6f067930b1e9cf827aa`  
		Last Modified: Fri, 17 Jul 2026 21:59:47 GMT  
		Size: 225.7 MB (225692759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:db1e46030dfae0b8f7d987d2c63706f68830c331c999bb6d72206aac13aa022d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4b1e9d5240aa3e264fc994df2c8c4e7aa78e3bef3b48084aec4f6b7f9d105a`

```dockerfile
```

-	Layers:
	-	`sha256:bc5f5256aec5d40bc1a6c56448826816246bb619f81ca416be01c6e2fc8487d8`  
		Last Modified: Fri, 17 Jul 2026 21:59:43 GMT  
		Size: 2.6 MB (2646952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1cd7b1bad511f4d3e1c26e712747f2622262e0b868e678ac7fffe89c9722f39`  
		Last Modified: Fri, 17 Jul 2026 21:59:43 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
