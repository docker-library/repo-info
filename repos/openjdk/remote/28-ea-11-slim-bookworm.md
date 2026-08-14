## `openjdk:28-ea-11-slim-bookworm`

```console
$ docker pull openjdk@sha256:e824e93bbd009c27b92d2882622e6e072bc9d8bf4bbe71aa2d0c328ea3956457
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-11-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:54193b9e27195654294322557add992b9edaf7319b7372a163085e97f00ab4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274970674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587618690d7cd02937c5f188bcff0a3f8bbc83d4ab343dccb52af740710c917a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 14 Aug 2026 17:59:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:59:35 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:59:35 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:59:35 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:59:35 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:59:35 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:59:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7180aa74714c2f2064ab4bd9046d6eba3f9dc6691802aa7afd2a7e583fff289`  
		Last Modified: Fri, 14 Aug 2026 17:59:57 GMT  
		Size: 4.0 MB (4046342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77999ffadfa14b44f7c8918d0ee1fd13f62032b9873de2ecc05c49ee995a2c0e`  
		Last Modified: Fri, 14 Aug 2026 18:00:03 GMT  
		Size: 242.7 MB (242691742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:de508b7f6dcee30c7ac8018dfda1473f8f7c873aa7ed48806c3cffe352fa1714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f68485a68eb842e4088a85e2a428eea1782a7693106de5c7251cb8b57f57db`

```dockerfile
```

-	Layers:
	-	`sha256:2e928715b5e5770539cded4d22ac8eb952f1fbc9a75889e8c0d6d876b755b070`  
		Last Modified: Fri, 14 Aug 2026 17:59:57 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eaeb619626911e762eed0f7af5d414d2a44833700b909146c9790368f8efb6a`  
		Last Modified: Fri, 14 Aug 2026 17:59:57 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:73eec09908445c01747f514d752af2596f61c2df970b9ef8bd36d397b112f68c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272759976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9396ead7114800f865d5cdd04846dc865ba21e18feb1f4594a50c1ed7e6bdcf6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 14 Aug 2026 17:59:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:59:13 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:59:13 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:59:13 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:59:13 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:59:13 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:59:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b423d33a72fb96fc0ef14a508034b5d53dd6c600e2c792489524b1b187db80`  
		Last Modified: Fri, 14 Aug 2026 17:59:36 GMT  
		Size: 3.9 MB (3861302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3e64ce9605bc34202784e57b8b161721890c610192a99c5749f140bb096edd`  
		Last Modified: Fri, 14 Aug 2026 17:59:41 GMT  
		Size: 240.8 MB (240781472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:5c92ad367715ee17e52734abc59f8cfa6c0b01e85b837ea4332af3087794a44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c7aaa8805b9f0b405a9a98d772fbc5ac8156823cf9f07275557cfe35a62314`

```dockerfile
```

-	Layers:
	-	`sha256:9d58e85e0bc40bbe8552e0c6c8e96340149cdfdc063f26b449ce7b5c4b188942`  
		Last Modified: Fri, 14 Aug 2026 17:59:36 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a46bfa23784913f483ae0108e3064f77c8c738c2a3302b0279105910dd6c846`  
		Last Modified: Fri, 14 Aug 2026 17:59:36 GMT  
		Size: 17.0 KB (16989 bytes)  
		MIME: application/vnd.in-toto+json
