## `openjdk:28-ea-8-jdk-oracle`

```console
$ docker pull openjdk@sha256:5886f903861b269aab628b8e9f21caff986b3c88f0d284a3373b0a5138ee2db8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-8-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:6e61399faaf193a154d0c65a86621651be78b394eaa8e0e1fcb24508882a6ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309214997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd99f5f16b996d5ee578581c00e7e7a76d481eb59467859ed14b972e9f10600a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:08:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:08:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:49 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:49 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:08:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a6faccc65ed9243eabb023faa265fb6631e9896c120e2d39712e130c3d29a`  
		Last Modified: Mon, 27 Jul 2026 22:07:36 GMT  
		Size: 36.9 MB (36854623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b83d1c8fb21608c958d37e6b247210f5f00b526afb9352d779fba29be111cb`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 227.5 MB (227528035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:0e25e61a3700d1a0d5a0e07f950e2a6dcdccb761c024b6ae959528f0f8b86b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5024fac1ce23b80ac7d618eab23e2f5823f95ffd174cb696f4c4e1721db56e`

```dockerfile
```

-	Layers:
	-	`sha256:21859217d388ed242361f8cbf8fa3ed20fa099642734ff75fe15a8ab695155f1`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 2.4 MB (2373333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:613982710e2e5121ad6a7a9c418f7e011676c15672e42c95023922cecae876ba`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-8-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:858ed5f35beb53512815b71e44f5290650a03bb04dce44f3567219a3bc29a91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.8 MB (305781580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c589116c8504db68665a1ece51142e972f5f2bba94ef76376021f003ec6a9f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:08:55 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:09:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:09:16 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:16 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:16 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:16 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5bf638879a5b77c9084273537390b023dbe511d4b8d75716e20ae7a154951`  
		Last Modified: Mon, 27 Jul 2026 22:09:39 GMT  
		Size: 36.9 MB (36903220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0f7957a5350b6fb24379ed85c0edbff1d9bfd4b18777c0fb4d63f965c5eda3`  
		Last Modified: Mon, 27 Jul 2026 22:09:43 GMT  
		Size: 225.6 MB (225590467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:0c29d528968fb8324a1d2fc3b9b405bfeb144044f41cbb24171f1a977dd8c80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c0e514dc4f5be0e0fbaf437f4976c1975ed2155d6ea1e5a73199d89bf86623`

```dockerfile
```

-	Layers:
	-	`sha256:fcdc2e7cc635946ec99b76b5e3da2d3e9ab83cf66b89d92900d87092abc4e3df`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 2.4 MB (2372861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3965c020893f8e205735a5a9877618db9c24ef4a70f41f00acc76a413ab5913f`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
