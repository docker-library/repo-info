## `openjdk:28-ea-20-jdk-slim`

```console
$ docker pull openjdk@sha256:8a69a26becd6f01ad24d34609fee12d74b3d1155c3814d0bd9cf08a9fd191a8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:edb7e0ded4350133a20ea9fe4e3f78715ce9d00c0754ccb8be1bdb0a7c000c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275208532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007e00757cf309777c7602890e0b6fb8c689415c63f79ddcba9b5d30d8777bc9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:36 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:36 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:36 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:36 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80195c1a13e860c1e9f7457dc0aeb9b879cf6d08ad6d83de49f1d89f7fc0da80`  
		Last Modified: Fri, 16 Oct 2026 20:32:58 GMT  
		Size: 2.4 MB (2371324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d2695e3b4ddd604938009ce538b30d8197065cdadcebdd8c18bda57a6d0a65`  
		Last Modified: Fri, 16 Oct 2026 20:33:02 GMT  
		Size: 243.0 MB (242993858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:040dc93b444443f84154c3c8ce82f260b1c470c02b4ebf08beee3c48df43b1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a9b1cd28d5e07a453363edcf4ce7eb6ee9697a5fa5f31accc6518fcfbe6380`

```dockerfile
```

-	Layers:
	-	`sha256:d674b72f35b83c396c95efc4424f4395755dd6877ee92a8fdce02a8790067d9b`  
		Last Modified: Fri, 16 Oct 2026 20:32:58 GMT  
		Size: 2.3 MB (2285558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc23b484d848b0e93495772d9e3a662d19882f9266f3cee28c6a94abf7cd4743`  
		Last Modified: Fri, 16 Oct 2026 20:32:57 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d70e5908732abd015181389b4436837abe848d8d2461b40d32cf9175690d5c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273552147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c0707a4d5c02a6958618ef33ce1f9fa923539ac55431933df5fc01e304a659`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:30 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:30 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9374ee44e93471c1c328e502764da839b691becfbd07c82c1d065837d6ab96`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 2.3 MB (2314419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d43a73104bc8e0f5ba43d4ff9b9129bdd312f57b6c98e99e6dbd511b3b2c385`  
		Last Modified: Fri, 16 Oct 2026 20:32:58 GMT  
		Size: 241.0 MB (241037446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:c31487c224f4045cfa46ef1b4d3247e7216c812de4111f22717c22374d2b53d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f224a4c337815447bc8de4fbd1bb791600dceb38adefe704311a4e2545526041`

```dockerfile
```

-	Layers:
	-	`sha256:015f993e2cb39c6ead45104db5c06ba60a1dfb59a40fcdb9562c75c194f937af`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 2.3 MB (2285236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:759e32ed44331b272d6d2b6cb3d75fcc31e706712be04474b9652d06749d71a6`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 18.3 KB (18275 bytes)  
		MIME: application/vnd.in-toto+json
