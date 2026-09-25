## `openjdk:28-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:f07ffb5b27f26a3bd51dc389703d6b571f2e3d227bdc0e93a312762ce14c67e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:0e4a12f2a7029add66b870eab1e568f9926fc6870ee29f43c850ef68ce474e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275270684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874a549e6e240ff6240ade682196697df016deff3a5cdfddacd0701646822ccd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 18:05:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:22 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:22 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9dfa2a0c3a7ed9d4ba051b3e6320ce79a5a41f2e90f863eb3150759eeb35f4`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 4.0 MB (4047448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f329265ddf4bc1b3d2259de34b9702679f4e971618bd6b4373e79c364172a7e6`  
		Last Modified: Fri, 25 Sep 2026 18:05:49 GMT  
		Size: 243.0 MB (242984793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a5f40134fedf8edffaf38f25825d934266b167dc335030f0b243c603d54eb609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b644bc5646e5c617d90a194a473e9f06fb63376466076dfbe2ad42dd9288b4`

```dockerfile
```

-	Layers:
	-	`sha256:c2462818c4abb1034b62eed52a86137a20540c0455ff731b71684d2127a4d6bc`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 2.7 MB (2655777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17edfb33a76d14a171e40b7bc4654094863ac66784443cf49e5c7f77cbe01517`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:91066cd6036ecf2a5c591f9818a4b0ed4348283089c05144ba757e9eb1c75023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273029067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1640311ed39f1518b8434095c8e07a56f84fdd46b26ddcea33e4f711c43e2397`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 18:05:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:18 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:18 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:18 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652dd6b171bc4bb5e3bdff41f7db4b18c581c3efdeafdbd26568cec73de6e245`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 3.9 MB (3863311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566483915ab2cd26d192b12dc4ab588caba12f7a39db1ca6c2c99760b6600b6a`  
		Last Modified: Fri, 25 Sep 2026 18:05:46 GMT  
		Size: 241.0 MB (241042076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:f22003b0bf39531030bc16e2e361faed4f4803c6334ac9bc305ea47e15285570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588b0947389a2a25740d1778545fd88542159c6caae69f211870594c5b2b3c88`

```dockerfile
```

-	Layers:
	-	`sha256:9a2202c12a1a960923c690e5ac269b3354eb83f72fe3145da777ad819a3635d2`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 2.7 MB (2655411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72a26823d959a6dabf03500f1f285d85a2532108519252bf79fafde05a599d18`  
		Last Modified: Fri, 25 Sep 2026 18:05:40 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
