## `openjdk:27-ea-31-jdk-slim`

```console
$ docker pull openjdk@sha256:404a5c3c440c5cb98861a04def1b594736ae225c013bb90e7ba8b8a9f355da61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d596f53eb2318a34df5f8a9d659d10a1195c9cbac87cd7fa329a98f7d8c79256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259314139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596e741d10a2bbd9d3a874559d465837cadf51754727fe06d7ba3e561872204e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Fri, 17 Jul 2026 21:58:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:58:45 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:58:45 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:45 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:45 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:45 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e40678eafcaee0c8812e11e75b6f482f37e7689afaeafd8e62f8cde43b53c0`  
		Last Modified: Fri, 17 Jul 2026 21:59:05 GMT  
		Size: 2.4 MB (2371299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9add2678798608814a5c6bc47a0492f2b25db629369cba9a8ed3a8264cc815b4`  
		Last Modified: Fri, 17 Jul 2026 21:59:09 GMT  
		Size: 227.2 MB (227161935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:5a53d54fb8c93b526c4b16533c9d13b6e40b91fbe21bab533cb16bc81d53a724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980a1838459221f92892c0ee10cf29d31b66cbcbcf98f5c9f49c4f84f9f68270`

```dockerfile
```

-	Layers:
	-	`sha256:5b6b6d0ca958f6ab7c4c475dd4fd51be265c5c9cf9eb44f1770712d69874aba6`  
		Last Modified: Fri, 17 Jul 2026 21:59:05 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ec51fa714d687dd63bc12ac698a62d87dea6578d3e4c91f17fe99641d66d271`  
		Last Modified: Fri, 17 Jul 2026 21:59:05 GMT  
		Size: 18.1 KB (18107 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ec75b2132ca5b757861e5081c248651d4de502ccfb18118d94c7d50db5f6d305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257614744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e48c3a888953abd3bfbcf95cf9700e5afab2832b25f8d674c7d6bdafaf4d82`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Fri, 17 Jul 2026 21:58:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:58:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:58:50 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:50 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:50 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8047a8345d2d157af89f60c7bab7d86a3479ec903a8e67a626c50e303f6153`  
		Last Modified: Fri, 17 Jul 2026 21:59:11 GMT  
		Size: 2.3 MB (2314607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a21abd193c936c9ac6b8383b9ff9d586eb74ea0291a8c30c880c45a907cdb8`  
		Last Modified: Fri, 17 Jul 2026 21:59:15 GMT  
		Size: 225.2 MB (225156432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:51428e384b180f2ba27742b2e7e409bf1f09fd41f4dd026028d78aecf0db362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d997c7bb248c99789c7d3e472b1cbfe7bfa3738e0ca45439c4e81a18ad68cb`

```dockerfile
```

-	Layers:
	-	`sha256:1fe0a1cdafb8ca80727cf891dd958a8199e8a1bb437b23027104a9904764ebd4`  
		Last Modified: Fri, 17 Jul 2026 21:59:11 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcfc0e476f48144f92999ca9d1af7cfb422f5b0b3ff07cafab72c1362669a514`  
		Last Modified: Fri, 17 Jul 2026 21:59:11 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
