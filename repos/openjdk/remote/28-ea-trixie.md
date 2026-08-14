## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:6314a1748fdead542cfb8adac16eb746d91873d55845e8794e077de5a6f2064e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:e94f6041e92fdbe6c3015a0196607184732771932bd9034b6488fb3811826625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401456318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb4609a0b2a6708b238e50f94882627351440eb966c5ab0a8788db319a321e0a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 14 Aug 2026 17:58:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:45 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:58:45 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:45 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:45 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:45 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c986242f37b029903497d40f7d8880bda213fe7cdf36def750acf4483841b7d2`  
		Last Modified: Fri, 14 Aug 2026 17:59:13 GMT  
		Size: 16.1 MB (16067180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eaa0b42366328ac52409b66540f9e5f8f67a90cc8b63528ff7e03f19ac58e3d`  
		Last Modified: Fri, 14 Aug 2026 17:59:17 GMT  
		Size: 242.6 MB (242640188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:039289e8b289d154035a87a9ff01717adced5a9d1613af57c4cf123d54a4bb6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8529522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a675d600d0d858cc69328305676539996793335255e609496a3ff575b0f6431c`

```dockerfile
```

-	Layers:
	-	`sha256:84e72e105eaf572808afd94a786d3c3fb0cfc8facff6f873118623af8fb35edc`  
		Last Modified: Fri, 14 Aug 2026 17:59:12 GMT  
		Size: 8.5 MB (8511609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50241fcfe7a8ce9c3c417b1c89ac99dab7ece53a5d8f936f370340b5d8b6c217`  
		Last Modified: Fri, 14 Aug 2026 17:59:12 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c35ebc085620c9e359e1ca931796445fc4fd04a65b42e56cc4cdb800eca5b3a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399104527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937d90703167595b11903a07f02f323e9c7f1cb871eef7d9fb982ed2703d034f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 14 Aug 2026 17:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:49 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:58:49 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:49 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:49 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c081e728af0024ed62a8e148a61dd0da2fc876510a3d030fed343d2925d977df`  
		Last Modified: Fri, 14 Aug 2026 17:59:18 GMT  
		Size: 16.1 MB (16071212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb82f98a5a8e367706ea5cb97362d6b090c7aebaf29ce1618979025e3e59d20f`  
		Last Modified: Fri, 14 Aug 2026 17:59:23 GMT  
		Size: 240.7 MB (240732413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:5f3d19b680c39e02fc6e500a2b8d33b57b361e015ede587875f41fbd39a21ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8723794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d635409ff16da3cb8b47ea182fd7fa07d226affd85aa961143bd0c6a5bcff36f`

```dockerfile
```

-	Layers:
	-	`sha256:1bbbb85056016c59ddbca017b2e9913b7c019d345ad2d11c1a530e54fde4ded6`  
		Last Modified: Fri, 14 Aug 2026 17:59:18 GMT  
		Size: 8.7 MB (8705762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a84cfa0754a8b4c10277d3500dd46e598688a7b57fd8f8bcdfa640e9217dd20c`  
		Last Modified: Fri, 14 Aug 2026 17:59:18 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
