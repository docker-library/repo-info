## `openjdk:28-ea-6-slim-bookworm`

```console
$ docker pull openjdk@sha256:2e88778125f65e4034054d9691362a5c8918a9f6a0e9841f108952f06cb1b532
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:49dacb1f22c731a73e4029b5d8b9addff5881d24c12f45f1c316908fe1dc797d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259879976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25241bb84fd1d123b4a3910e5683d8b263be7f782e5eb2d5e9ab9764da7cc38`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:54 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 01:48:54 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:48:54 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:48:54 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 01:48:54 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:48:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd5509ca22bc60de79785c0118715a3a438013aaa6df821401bc639207793a`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 4.0 MB (4032947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014e4edc871f9835fc66580f57d02636df17c268a1c61d98df2f4b0433e2d491`  
		Last Modified: Tue, 14 Jul 2026 01:49:18 GMT  
		Size: 227.6 MB (227614386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:524cc2a4d9f2127c0a5a2e81c3381cd18c1a8091537d5ced0707b068a21cb428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add9cc6e49b7383084cafb41a34945877449d371b940e37b9810622e14ce5b4c`

```dockerfile
```

-	Layers:
	-	`sha256:b4ac65bdbeec207417c0b072d4b29f4d8a4b95a7eee01646d44e01ede5349d5a`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 2.6 MB (2647318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1a041c525e4d4e209e913ec0ec3f7189c2e3024eda51ef7cb44dd793d5367c4`  
		Last Modified: Tue, 14 Jul 2026 01:49:13 GMT  
		Size: 16.9 KB (16858 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ad9dc9bc96d625e7c6d928893efe2a50f72dd9aa5364552003a928b59305a289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257643937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8422f59a07e4d2b852204b49999997fcaf338644fd67f56a4750b693cae7ed`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:59 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 01:51:59 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:51:59 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:51:59 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 01:51:59 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:51:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f490cce1b61e64667eba7b756863970a009fec08eb9786211c1e571f8a523d1f`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 3.9 MB (3852779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ef75b5770d466b1fa36ac9dca8bd5efba334ee7e7023b20a72fef5498ef9e`  
		Last Modified: Tue, 14 Jul 2026 01:52:26 GMT  
		Size: 225.7 MB (225673903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:f9f60171c9771309c3534c8654cfc11f17a708f4bf53c47e976b8a7899cc9b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ed08cb60631faf0d24e0f890f95f608536727b3f5ea7340c1e94617a2c7166`

```dockerfile
```

-	Layers:
	-	`sha256:2f4206186f75d9e2c1402111bcaabe6f6a7c93a2525adf3b4961911a89e6c2cd`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 2.6 MB (2646952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f8b5bb43517787a955ee8fdb0daacf71eebcad75814c6335918eb92e1cb7d3`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
