## `openjdk:28-ea-12-oraclelinux9`

```console
$ docker pull openjdk@sha256:f787cb82268bad5abaaedaec767ba8834f9fa35fe43cf906c2bc6df5e202d7c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-12-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:541e74d98ac3b30dbb14d6308fa2d54f3a0d15e17b52794454ecfdd3cf15704f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328726344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d622fe5c25ab8ba8b4127e43cefacbc93bc8f14439e93541ab62e04e66af74`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:59:42 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:59:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:59:51 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:59:51 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:59:51 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:59:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:59:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c37a90f1fe6f7be3166aad434eaeae3058a79286185712bda99203549c0bd51`  
		Last Modified: Tue, 25 Aug 2026 18:00:17 GMT  
		Size: 38.3 MB (38285745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63ac2cc19ba7dc67e8e7bad2369354afde90d034b393a4b64342d42791da2db`  
		Last Modified: Tue, 25 Aug 2026 18:00:21 GMT  
		Size: 242.5 MB (242512847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:21e0c24b046d5465cb3f1f1761272bc37e9f6a7eed1e51009b4360b614302a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3670750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032e8548de7d9a7a6d2a243ac102fb602a46ca0d134cc346f66981c7b358abba`

```dockerfile
```

-	Layers:
	-	`sha256:5d6cfa9bd51510e2f74408d55f0b9dd6c694f3c5c9fd1bc81a0c81e9c2d4cd96`  
		Last Modified: Tue, 25 Aug 2026 18:00:15 GMT  
		Size: 3.7 MB (3655407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a779789a8a938dab59e2e8a7c5c32a91b5a3c1925ca820cb9c1d6b2a28f8cd9`  
		Last Modified: Tue, 25 Aug 2026 18:00:14 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-12-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:54e40322ff51d65be5a24e642887687b18d0f898276f8404f45cdf7aeb98a1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325770589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6f804a3c2f23086e78cd3c2220b62444ca90a6e6c1e2e85d27f7df62a793bf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:57:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:57:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:57:20 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:20 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:20 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb241861a2293af96975cead4c6685d931b49d9bfe4377025f69565fbac8cd26`  
		Last Modified: Tue, 25 Aug 2026 17:57:46 GMT  
		Size: 38.7 MB (38686367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fe9148c055de34dae564460ad7f9d228f236b9b506f8eb8ebebfce38c0549d`  
		Last Modified: Tue, 25 Aug 2026 17:57:50 GMT  
		Size: 240.6 MB (240606317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:2b047b232b73377cd0cc0f08cf48638f567a2039d6c2f9a18232f5a19e504398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8b7b1d28fc3275c17c3704584c0647da0fd6e73757b6f71cce2f3d5293cbd9`

```dockerfile
```

-	Layers:
	-	`sha256:b20c895d0911b49312581a447d35d488070732b3a67020a7298f80b585f35e86`  
		Last Modified: Tue, 25 Aug 2026 17:57:44 GMT  
		Size: 3.7 MB (3653017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee8109e49a8a4e9c3438495170568d036538a015a25e80c12366d6f526e8fbb5`  
		Last Modified: Tue, 25 Aug 2026 17:57:44 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
