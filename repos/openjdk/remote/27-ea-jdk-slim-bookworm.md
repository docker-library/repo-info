## `openjdk:27-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:53785af22f240442e578ad04dd45671aa34b30c87f2a6d3d6f8bd8124c1cd3db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:98740bfe15870a9f6abf6aa3500b2e4ad0b99f8cd85d7617d644edb5cb4ef58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259454367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60daad7c95025f5e59659befc9fe59c0abefda2ebcc565ac6f1ce7ce359d4f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Mon, 27 Jul 2026 22:08:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:08:16 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:16 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:16 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:08:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca34311e702f4aab9167e9e9ac8e7cd0003994748a060ea2c72b72ee819fa7a0`  
		Last Modified: Mon, 27 Jul 2026 22:08:34 GMT  
		Size: 4.0 MB (4032951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08487a1c22bcc53c2e10b63c9eb6537bc1b18a6a0036a523a296ca007c18d5fd`  
		Last Modified: Mon, 27 Jul 2026 22:08:38 GMT  
		Size: 227.2 MB (227188773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:243f58b7e49c78a4cc7b957b078ce4acbd06c2cf10b2fdcab89ecf5d4881cec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f4c2df0ce5c5c68a91c4b670e6f9ab3edaa0e733829fae93daffaa8be300ab`

```dockerfile
```

-	Layers:
	-	`sha256:b621e3477d2cf5354729851122bbc1c8c4311ab58a2e1b2a880a0b3dd716a485`  
		Last Modified: Mon, 27 Jul 2026 22:08:34 GMT  
		Size: 2.6 MB (2647326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d42124596a24fcdda64a4cd89cf870a54d47d79a20b35361cf0884a78c5d4984`  
		Last Modified: Mon, 27 Jul 2026 22:08:34 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2b9667d463d3a86adfe5ac64e2c4c0686a9565b13f468752f0305b49d8ea3207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257130471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb8e899891e6d5369ac6660b0570580526a4d8a56aa5452fd5cc83c13342eb9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Mon, 27 Jul 2026 22:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 27 Jul 2026 22:09:01 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:01 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:01 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:09:01 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f3348cff2755282fc7835340af017c2cf0c21482207e7e5ce9ea2111345dc5`  
		Last Modified: Mon, 27 Jul 2026 22:09:22 GMT  
		Size: 3.9 MB (3852841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042faf7af25ab9e2ac802ee21e067b2e6c658673e673532bd2808c9b47fa3aee`  
		Last Modified: Mon, 27 Jul 2026 22:09:26 GMT  
		Size: 225.2 MB (225160375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:e5f25b20b1f73cb4cd17c4962efac30abb5db97598b07bdb9fbe3bca006838fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65be7af531d9d6fbfadb8efaf43e8ff832f687f6b7d73bfee5515619b75c1e8`

```dockerfile
```

-	Layers:
	-	`sha256:7cefcaddf34c7df76b99a7179aefb8b67b0d0d436678d714701e79c319974c66`  
		Last Modified: Mon, 27 Jul 2026 22:09:22 GMT  
		Size: 2.6 MB (2646960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6080f95e09cca8a7285581e76ef6ee75901574d55513c319dae4e0464761ed60`  
		Last Modified: Mon, 27 Jul 2026 22:09:21 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
