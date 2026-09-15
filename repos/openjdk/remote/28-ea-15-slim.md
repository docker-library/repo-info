## `openjdk:28-ea-15-slim`

```console
$ docker pull openjdk@sha256:35075bc0c356993c0cd2ec3c61977f3ff9cc6ad42c0a894e2b12e29976a7d3d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-15-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:b4e22aea2f07f1a35ce13bd7275e052746065de41b126726ade4b74a35847dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278039367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95286c834d7e2f923d815d64c75fa050b68f440c225cbf193223d0cea3190a58`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:38:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:38:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:38:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:17 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:17 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1e2fd77b6c96c2032f5063264ec52d55ca2555c49fce08fd599eca7a3c9ce4`  
		Last Modified: Tue, 15 Sep 2026 21:38:40 GMT  
		Size: 5.3 MB (5337487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00fc9549d55bf50507b89489949de5a1a53b0bb79e10db7817e33ba491e76aa`  
		Last Modified: Tue, 15 Sep 2026 21:38:45 GMT  
		Size: 242.9 MB (242909222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:ef6d0a0400291979ed368aef820eeaafc81f385c4ab3a21080e07eabdd4c0fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e7e24dab538db9e029b209ed344961b3c4ace760b0d7e221c1df1161d62ef4`

```dockerfile
```

-	Layers:
	-	`sha256:045949789a6651fb0e52f87c1fce4e6b7976fba795d4a00d9bff725abcc0afce`  
		Last Modified: Tue, 15 Sep 2026 21:38:40 GMT  
		Size: 2.3 MB (2279848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22180b38079974e18fde761aa5d958c7494424dcb70d70bc2e0052191c6f153f`  
		Last Modified: Tue, 15 Sep 2026 21:38:39 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-15-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fe96455b9d41521dfd843abc3f40851cf0ca4f25008d6c6e83931406fa6ca8d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276780865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897288dfc84ac2446203b155c645068fdbe0436d471b4778e470b553e17e4200`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:44:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:44:27 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:44:27 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:27 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:27 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:27 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d26cb70a1350ee0fbd568dfe000e91084a386e389db1f22a0f4db42da24f397`  
		Last Modified: Tue, 15 Sep 2026 21:44:51 GMT  
		Size: 5.6 MB (5647657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9c264d12f21c2b06e3712ebf2ce61c4f8a55125113b2e09ad194fa89d09341`  
		Last Modified: Tue, 15 Sep 2026 21:44:55 GMT  
		Size: 241.0 MB (240973626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:07dbf9b47c082e50ab0fa8d7bac1205f07bf8aec748a3ac4de66b49f2caf2127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b1f79c7c151de2ea2750c43a51d1e1d19624e6e8027dde3baea001f0f64e7d`

```dockerfile
```

-	Layers:
	-	`sha256:9362519f9acb33641372b1f303f2f38f0fea3279d209b95b4f03b1e9b26fa56e`  
		Last Modified: Tue, 15 Sep 2026 21:44:50 GMT  
		Size: 2.3 MB (2279526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a4834c6259f62fa5d95e0133fc11995baa4287e96c2cecb980e42b427e60224`  
		Last Modified: Tue, 15 Sep 2026 21:44:50 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
