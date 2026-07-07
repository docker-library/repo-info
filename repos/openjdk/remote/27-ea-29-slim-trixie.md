## `openjdk:27-ea-29-slim-trixie`

```console
$ docker pull openjdk@sha256:7d10ca80449f7d5905b9d97022d0d3e7fd3bb91ad725d30728ef9074e30a61e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-29-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:e9e7a2852a38d3cd559c17a43b9b41d61b48a00acedc6e1937c9cb0a2c788925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259303535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6e0b15a765fe904c3955f3f0c2488fbecc83d37608b66e6a5cbc41162b30f3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:24 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:24 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:24 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf8e54cdb7a78bc716b76b8e878e8413cf45be37bd82ef7ccfb55372b0d19b2`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.4 MB (2371315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7df6f0163349414ba999367673e721175b385262d0a04a181b04e987400970`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 227.1 MB (227146801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-29-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:42e1c41ad6085ad782687e49cdd513ca011ec1188c4219b435aa08a5dc443d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460ddbd767f9aa648b3857f23fe1182895d25a079e6f4af25c051bcfd51521e9`

```dockerfile
```

-	Layers:
	-	`sha256:b867f8a439205d272604df333bf8f959ba5322bef832124faef7c3f347fb96ab`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.3 MB (2276384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c8639b296897d4fc982fb74c7fd4fedc9d3a92d356d8ab0cc7e43f4cca5e785`  
		Last Modified: Mon, 06 Jul 2026 21:39:43 GMT  
		Size: 18.1 KB (18108 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-29-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f1ad78ea421241f9f7777e4057879e46811c16d2893768e87535e431da7ce419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257589386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ed6b0eda212b4e8f624d8114d877dc84e9e512ab565f7d2981ac9b953873e2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:28 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:28 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:28 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:28 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:28 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715c8e231557fbdfe3deda77cb78c5716d1152d7b06f36460bdedad3a306d393`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 2.3 MB (2314568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a184627bbdaad70317aa9a00fb96fe68fd615751a85831e4329c907aab6f698d`  
		Last Modified: Mon, 06 Jul 2026 21:39:53 GMT  
		Size: 225.1 MB (225126267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-29-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:5ab7321ff67559211320bb10112f9557fa284c4892ce7881b8c6557c49e0ff5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42857d4b1e1da51b2a92ffca727c82a3fef3c5925695370772fc7db5bddaeb31`

```dockerfile
```

-	Layers:
	-	`sha256:611a104cc519da366d1a059e0d4e6f79a68cf354776d35a91e794e5e147daf3f`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 2.3 MB (2276062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29f50e971459aeb6455bc46148e3b37be3c77504c60a1b3d5c23ed1b0eb5bab2`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 18.3 KB (18275 bytes)  
		MIME: application/vnd.in-toto+json
