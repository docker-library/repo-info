## `openjdk:27-ea-32-oracle`

```console
$ docker pull openjdk@sha256:6e53b23c1b8784a23f98b07e26e475e03304609ebe40d0a719b946088cd17c32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-32-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:6254cc7117bdd4c921e1cf060760235382dd33fdb0242012ff9c0ba9da0624cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308719786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a143c40351e715e2f47b87c500d64614fffb287e6c9a095572be1b73aea0b58d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:26 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:10:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 30 Jul 2026 01:10:37 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:10:37 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:10:37 GMT
ENV JAVA_VERSION=27-ea+32
# Thu, 30 Jul 2026 01:10:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:10:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3f278b963a3ceef3b1dd88590bfaac21f6e7e202ac7e4e978f44a83f442bab`  
		Last Modified: Thu, 30 Jul 2026 01:11:01 GMT  
		Size: 36.9 MB (36857610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a46713d31f2460500fcb5b7dcf03d0e9deedb676a17ab43ac486039b991095`  
		Last Modified: Thu, 30 Jul 2026 01:11:04 GMT  
		Size: 227.0 MB (227020455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:99334b3321bcd946e0d9e6bd5cdf6bb5e228dd064d14ab64a659f868fce90016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfa36256a53c4312f5105f6a759e54a0e48e2f9912515ec1b1bae3e7d827278`

```dockerfile
```

-	Layers:
	-	`sha256:3a20cb73feaf4781963374cd80bbd1ea34bab5c75b8b5d80d174e55670949782`  
		Last Modified: Thu, 30 Jul 2026 01:10:59 GMT  
		Size: 2.4 MB (2373373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e20de6ef525fa0e33781d32ea4adcde398ce7a8318affd55e0f50ce8f3dc295b`  
		Last Modified: Thu, 30 Jul 2026 01:10:59 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-32-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d794e12886e08fb1a7dd89d3339912bd444c7bdd89b1f6cc5d6c99eb2072e6a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305213943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d7427d2f2d8df0995e8826acc2c531c0febb121b76c16c71fce6ca00bab750`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:10:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 30 Jul 2026 01:10:18 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:10:18 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:10:18 GMT
ENV JAVA_VERSION=27-ea+32
# Thu, 30 Jul 2026 01:10:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:10:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c9ba381220648f8899cf64eba7358f475ffa79e0249b9f56b19eae00a99439`  
		Last Modified: Thu, 30 Jul 2026 01:10:41 GMT  
		Size: 36.9 MB (36913796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27369a6468d8ccd8b561e3ef83ec6ca51417f76b740316c7c4a9962e821128c`  
		Last Modified: Thu, 30 Jul 2026 01:10:44 GMT  
		Size: 225.0 MB (224997194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:69c93878069c71543f42f97f3a910451d85f1af0b8250ccf41478d56aa2edf90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854a3dfbc6fe6ca0e8d942966ac83e63593b046939cd78153d153eef4c895c68`

```dockerfile
```

-	Layers:
	-	`sha256:07d3937869a608a26db8ff3d508ec61766b14d3878a02f5b48e97379a5ee827b`  
		Last Modified: Thu, 30 Jul 2026 01:10:40 GMT  
		Size: 2.4 MB (2372901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e324582eaba2c96500692788b1edae7fe08f2959ccceded94fa232dab6c4fff9`  
		Last Modified: Thu, 30 Jul 2026 01:10:39 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
