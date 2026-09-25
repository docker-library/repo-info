## `openjdk:28-ea-jdk-slim-trixie`

```console
$ docker pull openjdk@sha256:f6c5280f745bf64c5d74135f5214495e9d70431ad8c437d67ea8df19cb85ccaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:1a310ae3f121533c8ffd922fbfe9c598a7d50f06316149050f44d47c3e91a8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275182288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3764dddfa22255c1909ca4a293d71883f18e0501350986cb15fce29e3a8a3039`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 18:05:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:21 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:21 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:21 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba609ac17752fa90e6e59bfb366a74ba20f9a91d28284c77b7ff24080e08fc9d`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 2.4 MB (2371387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a5c8c2e09e9cb6ac8cefd32daf6fbd8c051913f2122b6e297081d2b937a95d`  
		Last Modified: Fri, 25 Sep 2026 18:05:47 GMT  
		Size: 243.0 MB (242980483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:8a21ab8dbfcd28407da6e48b6253326079b4d56e81e521e32249f18f583fb06b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edc5d9c6024ab00608bdc7cdc15b6e7707769743c38642243e850c8c419e478`

```dockerfile
```

-	Layers:
	-	`sha256:a4874c845c2a16c5aa93b5f6c3944891c8a48574e929dd42e2e8485481cb67d7`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 2.3 MB (2285558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:356923ca2a8c7a8ca0f9bbfdfcc422066f1379fab5a1cecc7c41881d5b621d48`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3df0ed4be38a17c40d486daefeecb29b0319224e1c2777aa4a33ceb2a59a3681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273542546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c0e72f6d211b9126bd9dc9b4d0f47d6513428f557ffdf5a179daae08b2b05d`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 18:05:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:17 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c794ddab36f8eccdda0c5bd8863a56a82387a6ca84a5ed1c85a3c3c77a45218`  
		Last Modified: Fri, 25 Sep 2026 18:05:40 GMT  
		Size: 2.3 MB (2314476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaf4485f28ccc8c00f27ccc2055198b64069e1eb9b504b155a7637344bab83b`  
		Last Modified: Fri, 25 Sep 2026 18:05:44 GMT  
		Size: 241.0 MB (241038379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0a19305a837e3af5ddb0624aac0646d7bbbe7873c05db61e2c39bae307d8c531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe2931c67588badb9707930bf7d2a6b5b9f278ed5b32a55b344d1e34a3edd77`

```dockerfile
```

-	Layers:
	-	`sha256:b99379e999f4e119d6b47091db3e9183dd98ae3ef411c48bcb844af2517a2510`  
		Last Modified: Fri, 25 Sep 2026 18:05:40 GMT  
		Size: 2.3 MB (2285236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31dbf4b01340e52c5596a08d55de564bcdc952356bb18362573931fc79e194d6`  
		Last Modified: Fri, 25 Sep 2026 18:05:40 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
