## `openjdk:28-ea-slim-trixie`

```console
$ docker pull openjdk@sha256:df58a4ee99160d0401764d489b97d35d374fa3f541412b6f845c565a2580a084
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:bf9d4366276aad2d23ea3e64ee9d62a581589eb23af2d3ef6d7cb7fac292bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274852043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff0a2f168fb595ed7239ab1a86764a385d8599e2cc7075dd0099628109f3643`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 00:56:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:56:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:56:17 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 00:56:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2f4dff1dbe12c2bd8ea7a8d66c28bb91dd697d895a81fbe7b8aa98c0840949`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 2.4 MB (2371228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09623158f603a1f8045804889683514dd24d57358354703da2abf0b2ef13d83e`  
		Last Modified: Tue, 25 Aug 2026 00:56:43 GMT  
		Size: 242.7 MB (242688157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:c7a42015c131ce0f0f67fb6d3f52052e9aac1805eafa40ccbee005cfdc077508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9563a9f44c1f90d5d72532e123d89870392e1066b3d1f5c615265ec34c9661fa`

```dockerfile
```

-	Layers:
	-	`sha256:f22e5223773be0713783c7e9a72b18826a2dbc9d0d5cb0eb3e9548a1e8408b7b`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 2.3 MB (2279210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6731b5c16ae3bb0aa15500c21b5c365ca05c5ca7366d762f1f05781d7ce99328`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cb8dc024fd36748200a5a22218a8556b92efc90acc0b516cc75051b2f444a29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273251780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc459207ed8a92e8f912928710c904046842df2c8f41be5c852e66c372bfdb7e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:58:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 00:58:05 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:58:05 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:58:05 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 00:58:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:58:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee31253876143cb8b0bed1ad399aaff3ae51efdb3b8dd39f461595b07d70cb8a`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 2.3 MB (2314598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338cfaf2c35a67957f252269bae84cec55de54bc5d16ef1672ea78c90e81b8bc`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 240.8 MB (240777600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:2a4f8fedf0a4d35302d4033b4aa002f231328aec58ad6b73ec6388427a70dd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9693dbcd1b0cb83abb336080449aa0fc508cdd323afceb4841a51b7fdf837ec6`

```dockerfile
```

-	Layers:
	-	`sha256:0c8c1a37efc2367edcd7f7b81a7b20e65b46dd6fa6059a37871517aadf59aa5c`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 2.3 MB (2278888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a2c8d82c26909553e93e65b634d764e6119a6626e263de4780c2050760b1186`  
		Last Modified: Tue, 25 Aug 2026 00:58:28 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
