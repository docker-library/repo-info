## `openjdk:28-ea-6-jdk-slim`

```console
$ docker pull openjdk@sha256:a825c9b4098d32ce33db0b5502f1dcc6d74178b769d5915ba7cdb4b8936a6f4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:62b9cb281b83951dc48c0555e36f0da4ec3c7532a4f23ee0acd38efae38f2c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259767036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b3ab0647539fa2e673de8a50e6bc4fd46835178683db9013ac1f27c4304a65`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:46 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 01:48:46 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:48:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:48:46 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 01:48:46 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:48:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e40cda84777f12eb9d6424e34a9cac6dc4ba75fddedd5a7b07323108297dde`  
		Last Modified: Tue, 14 Jul 2026 01:49:06 GMT  
		Size: 2.4 MB (2371276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7958c5f6e867e62eb64376da2ac54773a1745de6f0a82ad07b1a89999abce8c3`  
		Last Modified: Tue, 14 Jul 2026 01:49:10 GMT  
		Size: 227.6 MB (227614855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:ccb9f48ca476094c480c9c99d4455c3c9eb984bb2e570a3be4ab45dc16abd80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d642965597eda96de12748e93b4adebdac132578dac25619cadd00aaecedb938`

```dockerfile
```

-	Layers:
	-	`sha256:38202adf42e1d23e3e1edfae8b3e9f6442c3f7529b5059cb8d82dbfdedbe1211`  
		Last Modified: Tue, 14 Jul 2026 01:49:06 GMT  
		Size: 2.3 MB (2276426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b9e348f6925e626b969577965d955e07f3c486c0448c567466256c4c8574f8b`  
		Last Modified: Tue, 14 Jul 2026 01:49:06 GMT  
		Size: 18.1 KB (18086 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c8541b1c2d3e869192f83d4e8970960d0cb0518f235cec7c7720e2b3c823b7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258134483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff71c87ec3869f66695a5e2ca48dc6fc643f467b5c72d6c9ddd5aeae986e764c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:51:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:58 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 01:51:58 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:51:58 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:51:58 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 01:51:58 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:51:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0ddd7b95f1de1987d0127da229c778c74a973ebcf8409428cc4b9bd0e9d409`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 2.3 MB (2314646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fc22cd6188270015d1ee74e0d8339716827086c04ec9b70dd0819b256ed4c5`  
		Last Modified: Tue, 14 Jul 2026 01:52:24 GMT  
		Size: 225.7 MB (225676132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:686da1c0c3203002b6c175d8d343c2e8e0dc0a1a976c84b3d255fcfa6016f1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b41f691f355ba6190c27b3a5a63f0a28eb45a73f8bf7e0ffdcbab94c238d44`

```dockerfile
```

-	Layers:
	-	`sha256:22c0c9cc0bef0142770c6106085f4f0ecea4a644f9daeeb4ef2337581f475ead`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 2.3 MB (2276104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c24db246fa71e36651a4a575c995a46204a1d3fed6c7e36894746e0a57eeafd0`  
		Last Modified: Tue, 14 Jul 2026 01:52:19 GMT  
		Size: 18.3 KB (18254 bytes)  
		MIME: application/vnd.in-toto+json
