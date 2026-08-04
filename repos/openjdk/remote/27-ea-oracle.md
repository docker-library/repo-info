## `openjdk:27-ea-oracle`

```console
$ docker pull openjdk@sha256:d5f3c254f37ce4b958ae3c762a9af4b1eb684da89f3dd170c4ad6412d2e7c4cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:bf9119508d400e1708ca585f047a867a8b5324ce6e865fadfa7f9e38e58fe17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308720510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9da1e5b30c6383b9b5b3fbdec172914d994fbe6e250928c26fc3738f1355a41`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:42 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 00:58:51 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:58:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3633a45624bcd7375956594f523033ec9e7811a1fcc9f4fd29424867e5cde9f7`  
		Last Modified: Tue, 04 Aug 2026 00:59:12 GMT  
		Size: 36.9 MB (36857259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828e0cf1a08931395fb1fd4012983620622e69c543f179e9c91cea877aa9d526`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 227.0 MB (227021530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:d8d75dc6ae42c883c9762f443c95dda3aa9f396c66d61118c9624277fc4d439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c7ffaa90ff4b63081edd4214523ef38357f76de28aee341a0d3c5994fd5b1a`

```dockerfile
```

-	Layers:
	-	`sha256:65e10767dc5b93d4ddaeec0d50f368757b736104911ef5373e0143a8eeba62a7`  
		Last Modified: Tue, 04 Aug 2026 00:59:10 GMT  
		Size: 2.4 MB (2373373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1809d298bd54c105fdb023ec8ceb7d695e78f37a440ecf978d7bcf1d8c5252f`  
		Last Modified: Tue, 04 Aug 2026 00:59:11 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fc3ae44f61257844c6fe07a59ac411f0c03a6e297bb1d471e365be667a344c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305214372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8597dde556c2d7b1798496d1298eb0afcfe69a9a4da50d71f8b9c0f983f79f8b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:22 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:58:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 00:58:37 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:58:37 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:37 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:58:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:58:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fa60fb4f513bb55f2899514aeef0261aa6744c1ca4251d6ceb12ff4e047a26`  
		Last Modified: Tue, 04 Aug 2026 00:59:00 GMT  
		Size: 36.9 MB (36914020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282d06ff40efe091c5d03bf3ecbfe6ceef14656cb7ebff3dcfbff5ae9ac6c323`  
		Last Modified: Tue, 04 Aug 2026 00:59:04 GMT  
		Size: 225.0 MB (224997399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:41e6c1fd3db960daaaaecb24531c82136108564f394571e23784186ec711ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8dd667146dba31f6dfec9f096346fffb9838347c8262939e01ae3e80cc667b`

```dockerfile
```

-	Layers:
	-	`sha256:ddb63fbe4106fb73f533bb6882b8fa4cf2d24af058077c02a1823a762c27360e`  
		Last Modified: Tue, 04 Aug 2026 00:58:59 GMT  
		Size: 2.4 MB (2372901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b51b6c9e5252d4395c76f52cb0e5c85211e22176ac71edc82ee08664ce8153f`  
		Last Modified: Tue, 04 Aug 2026 00:58:58 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
