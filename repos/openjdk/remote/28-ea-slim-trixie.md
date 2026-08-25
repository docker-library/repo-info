## `openjdk:28-ea-slim-trixie`

```console
$ docker pull openjdk@sha256:8abd6fb4ddc334b53ce5185dbc7b90ac3e93b500852da46a82e80d2e5ae78845
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:df70876d14760a67f9bfb6db9354915e59bd07321c1911e56458f6bc7c94dd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274852793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a3bed871c9515780d510413051f9b83a1d461c64c5463926062f413f261e40`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:59:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 18:00:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 18:00:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 18:00:09 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 18:00:09 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:00:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 18:00:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959ef18f1c24f783f8eebd58850a584c15a0e8488a6ff72b1fb1fdd7119fe9b6`  
		Last Modified: Tue, 25 Aug 2026 18:00:29 GMT  
		Size: 2.4 MB (2371306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5265d2a0f9cb3fe9039d65792d3ba1d0fb918992b8ba3c494c37910cab3c72cd`  
		Last Modified: Tue, 25 Aug 2026 18:00:35 GMT  
		Size: 242.7 MB (242688829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:fee8b7a323efa2db2d428106d14d699c823c9f99f5bf3e38ee07ec6ccccbe221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28af67bacc0f4b5da220ef796a9298bbe7df28bc82fc58162ed31ba90233fae7`

```dockerfile
```

-	Layers:
	-	`sha256:1e08f4b95848d7d29247e7fb5fcd915f2b4d8c39388cd67625257fdd751e2ba3`  
		Last Modified: Tue, 25 Aug 2026 18:00:33 GMT  
		Size: 2.3 MB (2279210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca49649e803a16d0e336740abb959dbd4ef0a22ad15c327875b8612e87ed142`  
		Last Modified: Tue, 25 Aug 2026 18:00:29 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:54a318c3aaacd2ed2233eb7b770f040cf0f165a131b7c51ff6da2112ce3c892b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273250161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6160028e0674eec5a710ba1a837c08cb0f0c821cbcf65ea356dc2cf4e88a94a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 17:56:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:57:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 17:57:05 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:05 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:05 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88044b873098246ee9d8f82b6181fdfae690b3afb442d515187227234476465`  
		Last Modified: Tue, 25 Aug 2026 17:57:28 GMT  
		Size: 2.3 MB (2314576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900f62406dc1c18ba4f36280ea26370a8a5e2c3d39b47f288b0c23b9a66a037e`  
		Last Modified: Tue, 25 Aug 2026 17:57:33 GMT  
		Size: 240.8 MB (240776003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:8fcf88df0b2c487ce1fadbc3e804daee133bce1b9ab82ae629687b7afd56f03a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5aac92f7256d5a97e546771d0714a58b3d54cc5c898ede5e631f5d31e92b86a`

```dockerfile
```

-	Layers:
	-	`sha256:6ec4fe29e58f1fbc6269b30818d4f5d2b06334aef6db1838b45194707482bd6e`  
		Last Modified: Tue, 25 Aug 2026 17:57:28 GMT  
		Size: 2.3 MB (2278888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf4ae98e358b214e3d4c0767315c67f79cd29ea378a6e9814b1a36f1ab9e9a8`  
		Last Modified: Tue, 25 Aug 2026 17:57:28 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
