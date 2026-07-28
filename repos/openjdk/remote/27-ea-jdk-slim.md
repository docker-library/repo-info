## `openjdk:27-ea-jdk-slim`

```console
$ docker pull openjdk@sha256:1093bca23a9fee833fd759c541eedbb986e5511c4e069f9b3cad1bfd6ce2a0e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d652b1eaf25c12c01cc0d117489e46e2647cd9b2a3c337367c55d6d26efeeaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259346124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1322cad0f99e890b4d7683f514ed24f47a3c73f017eb3c0ada702fdf59b72e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:08:07 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:07 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:07 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:08:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3530541d56c146f247c82b992e53ae3aabe137422baad9e3cf4171cca80cbb56`  
		Last Modified: Mon, 27 Jul 2026 22:08:27 GMT  
		Size: 2.4 MB (2371333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a43853c6921a667c5692cd9ef77947b6989f4e2755078de4bf31ec485f1f83`  
		Last Modified: Mon, 27 Jul 2026 22:08:32 GMT  
		Size: 227.2 MB (227193886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:eeed40299473d37d884c3d734f3194dbf9b1c5197a5456a60d8877c70d995a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc72e03a0235e58d7b370d5f096835123fffb5775e6447c14f7904d3d930b76`

```dockerfile
```

-	Layers:
	-	`sha256:f2743fd37cb05c372d36f107673e28df07099021944914029b359b4298ae9273`  
		Last Modified: Mon, 27 Jul 2026 22:08:27 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8224233f8fff7e081d0d0377795ca2736b60689257da4f757945485b52e57361`  
		Last Modified: Mon, 27 Jul 2026 22:08:27 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:012708c3659919a58d78483186d5dee1aeb19f1c05554da443f8c363eda8598b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257623539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f851c89d105c02383a80be8613caa4486599d2dcc36d8390fd7b68657cce31a0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Mon, 27 Jul 2026 22:08:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:08:19 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:19 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:19 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:08:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bdb3b652ef4022d9a92bc16b98bf104fb566947e45a4010bb6a418340200b8`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 2.3 MB (2314644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3bde361b0f382de4e3d2110ff4fdbba3bce77f54db68f4e9135fc3597a8e3d`  
		Last Modified: Mon, 27 Jul 2026 22:08:44 GMT  
		Size: 225.2 MB (225165190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:d36f3b6e8ba1d9daa50e904cfe64b89cf3d6d669a88c36d564611e6ff9b440dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87967926232dc19985cc988cf158373353fd24017496364102135c2877d2fa5`

```dockerfile
```

-	Layers:
	-	`sha256:6fed7192da307c908d3a6253017eb6ad84cf1eed3ada05d6febd1455a1cb1ccc`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5fccba25e379509f7e8e6fd4b97fea92b9eda7da51c207085cbf234870abfa1`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
