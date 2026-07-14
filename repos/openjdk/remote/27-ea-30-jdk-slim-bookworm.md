## `openjdk:27-ea-30-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:b9da0b6fb93e5d50e9bc925d0c44dfc84d095cda2b4014d0deddb5954bc1538c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-30-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:9bb7cfe901c05f98d0a15f465c4995704343aa613fa55efb497f17b915c60aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259415416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056ae1a572eef6ded9339b6c4faf590b34407b06a6195b866debe859fb820b14`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:39 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 01:48:39 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:48:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:48:39 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 01:48:39 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:48:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4fc8cbe3083ab3c9bce1f46571da17efd6baf92f09eb50e0439c06a2f12eb6`  
		Last Modified: Tue, 14 Jul 2026 01:48:59 GMT  
		Size: 4.0 MB (4032976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98437965e292377cdbe2966e96fa5308d2729ea897746fa7d13c9f60c62d6894`  
		Last Modified: Tue, 14 Jul 2026 01:49:04 GMT  
		Size: 227.1 MB (227149797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ccd612ff0d4f8e998d9630fe322aa7b0c794448b90746c7b9f7eb2f3c2cae4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422c19015a97fe3a3b3611dadfcaff4dd33449ac3123d5723c59079b6b43baed`

```dockerfile
```

-	Layers:
	-	`sha256:2c6ae861aea9e630e29b42375d15f07d95b542878a8a7fd3752d7732e0d2d238`  
		Last Modified: Tue, 14 Jul 2026 01:48:59 GMT  
		Size: 2.6 MB (2647326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a267df479acea0075ff37d156f778fa80e617ddaf2512e569cae3bdbac961290`  
		Last Modified: Tue, 14 Jul 2026 01:48:59 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-30-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:65f47e879bb83efea6c601370f43caf128a02a41faab3e881d960e9ed60e363b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257097948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80cff68a08a9d932e3808784ef6e696d12da3d57ccf920b6d7bfb48242b431a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 01:51:50 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:51:50 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:51:50 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 01:51:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:51:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a617fc15af619b7b1a4d566df57037205469c892d8e70123d6951f21471347e0`  
		Last Modified: Tue, 14 Jul 2026 01:52:11 GMT  
		Size: 3.9 MB (3852781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da5a62b7592cde8cc2cc12eaf3025d0c67e5f197b37df1c313ef575ebc56ae9`  
		Last Modified: Tue, 14 Jul 2026 01:52:27 GMT  
		Size: 225.1 MB (225127912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9c098bb70ade13232cfb03397b0b899cf8aaa62ce75d2cff6912c39509e98893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bed92325d1a3f590e2b8a734c3b30bb71c2a970456375f422e1f3244269229`

```dockerfile
```

-	Layers:
	-	`sha256:addb296403f49d42e73dc51e7de0f7f06b9c2a3b4f44575a5e59210dd4865c28`  
		Last Modified: Tue, 14 Jul 2026 01:52:11 GMT  
		Size: 2.6 MB (2646960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73c770f60c5540478aeb4b8836809cd6eae6c03461fdb7b8aea1db3d87f8612`  
		Last Modified: Tue, 14 Jul 2026 01:52:10 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
