## `openjdk:27-rc-slim-bookworm`

```console
$ docker pull openjdk@sha256:adce9998d1930c2d43233cf387a2ad370c4acb184326df1122424180638e8ce7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:bd475bcf415daa904aa4b8fd378cd300209d310e61cf1837fb2775f434e15d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259475236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f5b75435b803e20a41d3a23d202125624de8383393358d8f1ff1d4a26b666cc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 17:45:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:45:45 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:45:45 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:45:45 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:45:45 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:45:45 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:45:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8589c6eeb43441ebcaa692b86287186cf08c5366813e5f900e2316af6fee3b07`  
		Last Modified: Fri, 21 Aug 2026 17:46:04 GMT  
		Size: 4.0 MB (4046334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9acf8f82677950b9589622812f0b90b30d819e9ccba898b408de669c91f7302`  
		Last Modified: Fri, 21 Aug 2026 17:46:08 GMT  
		Size: 227.2 MB (227196312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d254703f1b4bd2802287b4439a7b14faf66af6fa5f98c29f3ee7bdb5db892ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2668112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abf97da60cd0fd0c4b68c910a630f43a316237fe9fa65682bb7a1d0cf173964`

```dockerfile
```

-	Layers:
	-	`sha256:e41f6acc9d573b6a1064f7ca4bc94f545f97e75e20fefb8d083228909cb00bc3`  
		Last Modified: Fri, 21 Aug 2026 17:46:04 GMT  
		Size: 2.7 MB (2651845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdca7f0141b38719662204cc84250b8b60b04b60271ce41de30b4f38ac632d61`  
		Last Modified: Fri, 21 Aug 2026 17:46:04 GMT  
		Size: 16.3 KB (16267 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:64352f35660f37752830ae1c18045154def4098b2f1a62e4336316595f4c3c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257144888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a10a5bc5aad8f1068268c4f6045e4a69dea5fc83a1b46ca08cd987a4038f4be`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 17:44:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:44:40 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:40 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:40 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f5fab84ceaafd2f01f11f13f887babac181569bd48c97d39def6a4eef34947`  
		Last Modified: Fri, 21 Aug 2026 17:45:01 GMT  
		Size: 3.9 MB (3861338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccde269783997b308858e73a9ff1ea8e78caa9557d9f0ca6eebc2ec2ac03e02c`  
		Last Modified: Fri, 21 Aug 2026 17:45:05 GMT  
		Size: 225.2 MB (225166348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4e6ae4994d5252ce66dec13fc69808c29743df207989439672edb75d150d4241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2667817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751b7aa46fb0b458772b093372670c31a8977d5b453654d79cb400b23429c82d`

```dockerfile
```

-	Layers:
	-	`sha256:60f9ce8712b6587acafba542dd66edd20ac28299292681f203bcad179eda92ec`  
		Last Modified: Fri, 21 Aug 2026 17:45:01 GMT  
		Size: 2.7 MB (2651455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71dd43650a0006be000a26b45a73bef3a9a35e88b59340a9fd6b65766961df88`  
		Last Modified: Fri, 21 Aug 2026 17:45:01 GMT  
		Size: 16.4 KB (16362 bytes)  
		MIME: application/vnd.in-toto+json
