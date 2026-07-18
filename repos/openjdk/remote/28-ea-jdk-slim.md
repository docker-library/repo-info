## `openjdk:28-ea-jdk-slim`

```console
$ docker pull openjdk@sha256:d061cfede6987b3808deb3ddb758fcedf034035c5c99269bc2fb3ae16d421952
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:1d799d8db1d76e90f6cf659d3f959d92a494d306c70f73704ab8aa018eeb6e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259792318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc54739384ebe4bfbf62ce96b0b3d3a75bedfaba278658263fbfdb366a13d6d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Fri, 17 Jul 2026 21:59:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:38 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:38 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:38 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:38 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:38 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd87ef027a0a2009c9372aca919103430d7c791481802dfae3c5e84583d62bd4`  
		Last Modified: Fri, 17 Jul 2026 21:59:58 GMT  
		Size: 2.4 MB (2371274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0faecb5ff2a2853bca9d645aeb41ff56cf3aec410840cae7f5b67fd97964fdd`  
		Last Modified: Fri, 17 Jul 2026 22:00:03 GMT  
		Size: 227.6 MB (227640139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:2d5f5251183c2604e4345a873e9d5e0b931f7de6dbc8ada14a0f4d40e59b1744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9368dec658565de8788fe28e261553e74f725b561d3174ef1c9eb4d6e7de346d`

```dockerfile
```

-	Layers:
	-	`sha256:3724a29269ba6cd073f6bdbd263ce713c6277272e752db8231f7b71b3afdeaf2`  
		Last Modified: Fri, 17 Jul 2026 21:59:58 GMT  
		Size: 2.3 MB (2276426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bd7acedd2088e28a117f6ee4dec9f5b8ee31842111cd36ee676cf900628199`  
		Last Modified: Fri, 17 Jul 2026 21:59:58 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a34b3b9ed5b12628c836075fd88b473adb65bf64f29bf3570c5a429afd9933da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258150994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3acadd9212a5aa0a14401b21d62841b6205613d5852dbe8c687aa6586122ef`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Fri, 17 Jul 2026 21:59:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:45 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 17 Jul 2026 21:59:45 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:45 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:45 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:45 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c601ff15c7348b93519b497640b2dec2559f7069feff0cfa994e57603d93d5f5`  
		Last Modified: Fri, 17 Jul 2026 22:00:07 GMT  
		Size: 2.3 MB (2314598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac3bc3844bf35406f65ef04309c2dfe7127241787f5cd4a56a1c2b1899796d4`  
		Last Modified: Fri, 17 Jul 2026 22:00:12 GMT  
		Size: 225.7 MB (225692691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:7dde53a4fa7bd3c2a9e2f1a5ff4176c79f554c5ce40068dea2824e14b16e413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7577c02a8847332a6f227f28e3f3221259cd4daf5ae2746ae74cb50cadf0a107`

```dockerfile
```

-	Layers:
	-	`sha256:bceea3d0a612c5dfb2c4c9278de5172f90aa9dbf1de64027d9fc368e7414f40c`  
		Last Modified: Fri, 17 Jul 2026 22:00:08 GMT  
		Size: 2.3 MB (2276104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b1cec808db0bb7d53c5aa44ea29f643dca46940e8fc5a2dc998c6a9580beecb`  
		Last Modified: Fri, 17 Jul 2026 22:00:08 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
