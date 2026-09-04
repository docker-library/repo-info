## `openjdk:28-ea-slim-trixie`

```console
$ docker pull openjdk@sha256:d4416bc55609b90c12aff18a5532f42784cbcf70890625cba4f4e026cb090ca6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:f31161505cea899fc5ada88bd2303cc8e85337a47957a70515c1861d42e8a714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277854424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7477c9fdc0d3680d7d53b92593969d36b3a85ac85e68c0aa2231ef6aed457d7c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 21:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:42 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:42 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:42 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:42 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:42 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982a346bc9f11626f093fc4c35e64a14f6b1aa07867181bc918b8cf2f135aae9`  
		Last Modified: Fri, 04 Sep 2026 21:10:05 GMT  
		Size: 5.3 MB (5337457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae440c75a200a49c8d373b9fe12c897fab9410bd565f631c69206660687f490f`  
		Last Modified: Fri, 04 Sep 2026 21:10:09 GMT  
		Size: 242.7 MB (242724309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:08cfc45a9328c24bae319a901e3a4723d3bcf5448980374ab5d1edd217cf53fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e660211bf741b33d055ee2e6804c463028f7f449741e89acce0b1088c16aa64`

```dockerfile
```

-	Layers:
	-	`sha256:11915c5c77a1b288d74a15961de179e0da3299bae8c23cb1a0585c17f00c0fe8`  
		Last Modified: Fri, 04 Sep 2026 21:10:04 GMT  
		Size: 2.3 MB (2279210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e61c04d046b74cec657eee08f264d026bd8004a80a332d33134e74b35ff47847`  
		Last Modified: Fri, 04 Sep 2026 21:10:04 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0e84eb01db3a1a4d3441bb83f7df8e2251e1fa792d35ce05207be34dcf383fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276597737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e502ebc0ddcde97df999e580a6f09d631620280d2e5a03d27855263bf2e173`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 21:08:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:08:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:08:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:08:24 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:08:24 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:08:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:08:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de59e8b71a06930daeab33243024a1e08d847ca66b9c63da416d68f0d66593`  
		Last Modified: Fri, 04 Sep 2026 21:08:48 GMT  
		Size: 5.6 MB (5647715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4b5ff2882af574556084fc66dfe5ef5fa213fc97151250f26048bfae50217c`  
		Last Modified: Fri, 04 Sep 2026 21:08:52 GMT  
		Size: 240.8 MB (240790440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:509cd03753d0cc25bc4e1db4408432ffe0d4069debc048069e475b721942c454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16dc9564361a8f3856e7d0989df94b751fe615c999054ee529b9bb630da0fb5`

```dockerfile
```

-	Layers:
	-	`sha256:0e50d05ca46828944ffa80a33bd1d0d71446a336ca58e45d0ce064196db18a1d`  
		Last Modified: Fri, 04 Sep 2026 21:08:47 GMT  
		Size: 2.3 MB (2278888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:741e7763f1c4ef9488f8943977f0085e468c5260ba76d3a304128c9dbc22ff8e`  
		Last Modified: Fri, 04 Sep 2026 21:08:48 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
