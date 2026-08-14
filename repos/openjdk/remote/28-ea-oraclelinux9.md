## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:b63fe4ef633e60de648f771fa5c7659667887908ec59043d520c3e5e97fa554d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:4581eef202e5959aa4f74fee16fd39edc47bc56d76676f5373825f0b0c16814c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328729529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e899073f6d9e4b571f95169075332d439aa9ad117645604e7742571304f9265`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Fri, 14 Aug 2026 17:58:30 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 14 Aug 2026 17:58:43 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 14 Aug 2026 17:58:43 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:43 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:43 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:43 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156e2ea5433a33e57aa983499e58a94b6a69b5f25751c511dde15a326bf866`  
		Last Modified: Fri, 14 Aug 2026 17:59:09 GMT  
		Size: 38.3 MB (38283356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02a8f714ed6804de8a25aea5814f2a448e22d435fda0301e654e91a9b8996cc`  
		Last Modified: Fri, 14 Aug 2026 17:59:13 GMT  
		Size: 242.5 MB (242518421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:9f27f5e00ec0db314c2a4e5dc7ba16df0fcff0e6a5ad50de389a06b4c437af92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3670750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4352d4b9c0c4bf65d07b17e7fd0170f48fd49c3461b37b82671a45b78e179b37`

```dockerfile
```

-	Layers:
	-	`sha256:483b7c7db6e80b1b08911f71f87b6c92973001705e2f0b5a6f7ff6e7c4d820d9`  
		Last Modified: Fri, 14 Aug 2026 17:59:07 GMT  
		Size: 3.7 MB (3655407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a0879df33c384470ca6836bf975aa6f4480cbed09f82dcd40b422edb43d2ef5`  
		Last Modified: Fri, 14 Aug 2026 17:59:07 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:aa65bb04570ac597adef786b18bdb60616c2f45f6cf7121265509f95862d55d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325766728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a51113e4a0db450716139177bab3664247c3a7ec959bcb84382b77e6951317`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Fri, 14 Aug 2026 17:58:39 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 14 Aug 2026 17:58:52 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 14 Aug 2026 17:58:52 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:52 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:52 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:52 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100659b7f952ac66c6d8dbc3a771899d3cd0fdc094bc142e5e8789fff558fe64`  
		Last Modified: Fri, 14 Aug 2026 17:59:17 GMT  
		Size: 38.7 MB (38685718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe16dc096771387c4dec0058f0e7661d217779f5f6235efe10cd60ce6f777150`  
		Last Modified: Fri, 14 Aug 2026 17:59:21 GMT  
		Size: 240.6 MB (240603105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:f7ed029d627fdab5a6458a2774f426fccb45b746ff67f21b3528beac4386fd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01778638867eec62cb75c621e4c13fcbfa5cbda3c8002350b3fbc4b18db2a788`

```dockerfile
```

-	Layers:
	-	`sha256:3eea0ad6ec2f04d4d69f173e5e1837e3ce02286de45f4ef0f7af794a712e5f8c`  
		Last Modified: Fri, 14 Aug 2026 17:59:16 GMT  
		Size: 3.7 MB (3653017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5590b6532ea314a0329b8130fade056b54a6fcd2e1a058615170ec268fa18b`  
		Last Modified: Fri, 14 Aug 2026 17:59:15 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
