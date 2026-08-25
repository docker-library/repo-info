## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:991a45bf36ff093179ef68d7819ba5b86165a2ccc22f36149d9a29d2c022a61a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:0ef0ef5ab3eb7e30764383eca545581e326c972255a814e913e6d92ecdbcb36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324215356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2118b07e155ca7aec5cc6fd48ca5f38cf6ae64720c294629455fd5852777bf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:59:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:59:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:59:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:59:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:59:19 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:59:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:59:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1315af4f9826ade5a2dbd0d0998e242f9bf95c055be47b2a37a7ae5df80d69bc`  
		Last Modified: Tue, 25 Aug 2026 17:59:42 GMT  
		Size: 36.9 MB (36854697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3ee4c61074c99613446de25e54b9815d9f43a6af36d4b8b392eb9fa6c8417b`  
		Last Modified: Tue, 25 Aug 2026 17:59:46 GMT  
		Size: 242.5 MB (242512927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:ec78d915c49c95e5c594555ace015d16d7562e27b098fe4b5b30638c2e9b5d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2facc3b21af8d8fc166f274dcccd183aa43f3b8639c2377406207f8023f0e7d0`

```dockerfile
```

-	Layers:
	-	`sha256:82aef5872e5051a11d6da0ad22bd83a4493c5995e1a3d55972aa6ccdb5c4a44c`  
		Last Modified: Tue, 25 Aug 2026 17:59:40 GMT  
		Size: 2.4 MB (2375970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:904d6dff0527ea73417de4be75df2c44abf8ac912d6d70289982802534996ace`  
		Last Modified: Tue, 25 Aug 2026 17:59:40 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ba97f9222cd3a54020e9c6611aadc537534d9b082982b9163fe2d38bc6bd2292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320827130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ccade98afcf39907236229e54ba17de35c3eb5db90a3cba5a030e084a6b988`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:56:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:57:06 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:57:06 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:06 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:06 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f638f9a8222d9916e73bc825e7a123d2f9fda94d4b1886ae4138841802633`  
		Last Modified: Tue, 25 Aug 2026 17:57:32 GMT  
		Size: 36.9 MB (36917022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24724d9e0e76f0751da24d428927032ceb6c534f8a8e67336c7d00fc0325e4cf`  
		Last Modified: Tue, 25 Aug 2026 17:57:36 GMT  
		Size: 240.6 MB (240606442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:e2e5dff2e83296e241ee3ed7e065a75dbdc64ee405e7e87b52527d2d98d6cef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b6dacfb929ad7ad11f3ec0ef911e88c510dcec554e344dc904b2f31836bc69`

```dockerfile
```

-	Layers:
	-	`sha256:d489b75e78fa1887a719df71146ce53174e04570f69b2b2e978961392299b7f8`  
		Last Modified: Tue, 25 Aug 2026 17:57:31 GMT  
		Size: 2.4 MB (2375498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf58710fa01858f6adff4fbcf186be75605c78c279206762286a08feacc15d6`  
		Last Modified: Tue, 25 Aug 2026 17:57:30 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
