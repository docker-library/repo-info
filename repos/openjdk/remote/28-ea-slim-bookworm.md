## `openjdk:28-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:31814c2104a0cad4496594ee31ab36b6a74b288f2ed51b70921609b1a0fd884b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:d0d32a1014afadcfa08b2e31dac5b20ccb314917e574a72b75d2d10b63fee283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259884961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267d7a8a2b702e1e6ab51ee0fc88538368e986ad2f739aa59dbc3e0cff015ed5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:11:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:11:18 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:11:18 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:11:18 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:11:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:11:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59011f56389522a446868bd46b1ad2f5037671517b5a4384b0b9378e0cda84a`  
		Last Modified: Fri, 10 Jul 2026 17:11:37 GMT  
		Size: 4.0 MB (4032917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8674ace56f701db3826bd71480948a06914df0dc53c53d76938b1873b0e50f19`  
		Last Modified: Fri, 10 Jul 2026 17:11:41 GMT  
		Size: 227.6 MB (227614405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ff3e8705f2501d5db916af79aa5e1e796db080087b508512a25444364cd5bdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b680f2c7d7412100e114be26673c8ee23644077224a2acab4ec83bbf70fa4aae`

```dockerfile
```

-	Layers:
	-	`sha256:7a777ab6af1713fca3b5c28f46cad95b7efc1b7a241cd5d98944da581754c0f4`  
		Last Modified: Fri, 10 Jul 2026 17:11:37 GMT  
		Size: 2.6 MB (2647282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17330bdf33542038b3385cbc93b824fea7edcd186ff5e0440eefc5ea3c0416df`  
		Last Modified: Fri, 10 Jul 2026 17:11:36 GMT  
		Size: 16.9 KB (16858 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d76f3f3531b4f0e608da208d19b053f101b1c7d08d6600874b733a6ca08774ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257649158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be61469963713841ec65cf999b71b95a487afc1b74128fe9b2de607ae479adf5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Fri, 10 Jul 2026 17:10:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:10:47 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:47 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:47 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2951c8327cb9695da4d714f9fc6b782ad19a39a959b0fb6fb69a339c8c29d5`  
		Last Modified: Fri, 10 Jul 2026 17:11:08 GMT  
		Size: 3.9 MB (3852848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ff9edbbfd3aeb74c047ab108f25c416f0868ef52ecb3133dc1bcc633d66873`  
		Last Modified: Fri, 10 Jul 2026 17:11:13 GMT  
		Size: 225.7 MB (225673892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d1f5a97f6a066edb7c71e722472b9816adfa3d8d99513bb77dbc367a84de8c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:427a564bb5ac7ff5b6c762f696047b491ffd8ac1a6b0ba3de0501ffded808319`

```dockerfile
```

-	Layers:
	-	`sha256:070492083ab3c43998a1edd85fccf26da3a4dd6bc0d6b683edbcfe852665343d`  
		Last Modified: Fri, 10 Jul 2026 17:11:08 GMT  
		Size: 2.6 MB (2646916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14e2dec3ea61a0021ac40b1b69db598ffad7b88806510e8b64377f2d2c520c08`  
		Last Modified: Fri, 10 Jul 2026 17:11:08 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
