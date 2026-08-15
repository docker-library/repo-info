## `openjdk:27-ea-34-jdk-oracle`

```console
$ docker pull openjdk@sha256:1801261e6799c78ca7b580b43e6635746f5b6a3d9d1edd4e759b020cf2ca8b4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-34-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:5452ead07d13ae7fb505f589144a2b68126024aab3acbae069c05036df69b289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308717194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a241ae9811fd5d5e14534bee9cf32efec2762c50bbe1b4cc176df0c3e9dcd0e`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 15 Aug 2026 00:19:02 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Sat, 15 Aug 2026 00:19:02 GMT
CMD ["/bin/bash"]
# Sat, 15 Aug 2026 01:10:02 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 15 Aug 2026 01:10:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Sat, 15 Aug 2026 01:10:11 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 15 Aug 2026 01:10:11 GMT
ENV LANG=C.UTF-8
# Sat, 15 Aug 2026 01:10:11 GMT
ENV JAVA_VERSION=27-ea+34
# Sat, 15 Aug 2026 01:10:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 15 Aug 2026 01:10:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ade256897cd461c9312cdc66cb3f5a44ea0a874e1a894843352f3caa6b5a2aa5`  
		Last Modified: Sat, 15 Aug 2026 00:19:13 GMT  
		Size: 44.8 MB (44842585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e21ffc9f51ec59aef4e45b0312ac58db2f43cda2da0b58522dfcfb092f4d0f`  
		Last Modified: Sat, 15 Aug 2026 01:10:34 GMT  
		Size: 36.9 MB (36855111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c247b01c15b59e18642b2963719ef008e594a2b6670532a2d6d2ad6b5631de`  
		Last Modified: Sat, 15 Aug 2026 01:10:37 GMT  
		Size: 227.0 MB (227019498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:55bd42ab3d3fdc4392296178340b852a6e5a792618d4232843055b41a0a016f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2584448692a173129d6cda09b4bd5dc9bf96121a6510b8b16d4229bd25b8855`

```dockerfile
```

-	Layers:
	-	`sha256:942212b1719199233ea0d04d9206e20fbd4357fb78c2875a86540d9705169c79`  
		Last Modified: Sat, 15 Aug 2026 01:10:32 GMT  
		Size: 2.4 MB (2373384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a811f82f7cf6c7073a447f89a4d626769d61726a1fb92c14ee399564e13f240`  
		Last Modified: Sat, 15 Aug 2026 01:10:32 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:44ae119454d8e95c5cb3f1d8ee43097b54fd65cae5d8bfbd083315687ee2192e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305209948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc627cc612dcc0ee73c1a8dc4b768c031c6d29949a577bd53f69b7549ed9b9b`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 15 Aug 2026 00:19:09 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Sat, 15 Aug 2026 00:19:09 GMT
CMD ["/bin/bash"]
# Sat, 15 Aug 2026 01:09:49 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 15 Aug 2026 01:10:03 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Sat, 15 Aug 2026 01:10:03 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 15 Aug 2026 01:10:03 GMT
ENV LANG=C.UTF-8
# Sat, 15 Aug 2026 01:10:03 GMT
ENV JAVA_VERSION=27-ea+34
# Sat, 15 Aug 2026 01:10:03 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 15 Aug 2026 01:10:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d0644aa4468df44c5a2d0710fb03e617decb8a8877189ee7cb7bd6d62dd0bb5`  
		Last Modified: Sat, 15 Aug 2026 00:19:19 GMT  
		Size: 43.3 MB (43301188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4e347219c4b2234fe15654d28d0ce6bb492755abcd03e132fa34db089aa7d0`  
		Last Modified: Sat, 15 Aug 2026 01:10:26 GMT  
		Size: 36.9 MB (36911131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a164f16c70f23aaf6933e171f4b8ffd71787a15a399392676233a472e98d4f`  
		Last Modified: Sat, 15 Aug 2026 01:10:30 GMT  
		Size: 225.0 MB (224997629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:6a3bd0adfe011d05bfbffbf75d84accb9ef8a7c72f60ad74a3e5ea1ba765f73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230a494c2a16cdb77088e6893d9402dd0d89d5834567d11d197ced869dd24221`

```dockerfile
```

-	Layers:
	-	`sha256:d5142dae473c3ffa306acd4a6df3fe7228067a7891883ab5ea612e65cee77dc2`  
		Last Modified: Sat, 15 Aug 2026 01:10:25 GMT  
		Size: 2.4 MB (2372912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47b96dd681f21424b9faa2a6b841de8b42037ed2938529a6346e9d76d1392299`  
		Last Modified: Sat, 15 Aug 2026 01:10:25 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
