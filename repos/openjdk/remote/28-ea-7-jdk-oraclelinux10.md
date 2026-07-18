## `openjdk:28-ea-7-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:79c356d4c2eb4a909ebfd98aa12a81d17995a5bfd654e4f1061cac2da8829bef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-7-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:bf89e7c94628f99941e94089d1bb560bfd912b86efcbb07bbeda0eca955539a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.7 MB (309684761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef99f8df88a021ccf6a32eafd8c443b1cfb91c743a44c1311dd97415af9b7b0e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:59:09 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:59:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 17 Jul 2026 21:59:20 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:20 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:20 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6637013c400eefffb4a335b8fa2cc6ed3f3992a251983a274f8b72d7fa8827ba`  
		Last Modified: Fri, 17 Jul 2026 21:59:44 GMT  
		Size: 39.1 MB (39128886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939179a4b15ca7a66205f2fb0b24ed413469710ba69dd2b50ada135a28153085`  
		Last Modified: Fri, 17 Jul 2026 21:59:48 GMT  
		Size: 227.5 MB (227475293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:c84149d5b28aed717ae61e821182a440bcfd376536abed4112dc50efbb055d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54372b32222567ea2eb692ceaa7bf499f080b6574166080c62ef488534c4631b`

```dockerfile
```

-	Layers:
	-	`sha256:b13272328acfe9dc1c655e2965c1aa722666294f5a89e232edc5c7eb4a6d24df`  
		Last Modified: Fri, 17 Jul 2026 21:59:42 GMT  
		Size: 2.4 MB (2394708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:174a8357fb0d1f9ab5b083ae59e8ea817828e2143c8e904bdc0cf5190b358707`  
		Last Modified: Fri, 17 Jul 2026 21:59:42 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-7-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:70872e321cfb0240799ff93742e1cd97a9384a58e943f9a5ae9ffd131884890e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306147667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a822c0405a1dc50ba7f95f7e139bc021763b612033774b9c93ef580062f56dfb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:58:59 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:59:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 17 Jul 2026 21:59:16 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:16 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:16 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:16 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954a409b0b7b8ce9f1d5e1b0eb78742f82f0779c9368a2d8e9b76ce92dcff3cf`  
		Last Modified: Fri, 17 Jul 2026 21:59:40 GMT  
		Size: 39.1 MB (39129376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7e5651dfea2c167d051a7e55b51515e86d647ff24f087e031330ad87661f04`  
		Last Modified: Fri, 17 Jul 2026 21:59:43 GMT  
		Size: 225.5 MB (225522596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:65c0f19d6150af636a3134a5771ae36752aadfa35d32b24692104f9dc0a803d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6abfbe8949f2434f817483f9ae89c98dfd6c2b6ef84db8d221a8d2d1cc6df1`

```dockerfile
```

-	Layers:
	-	`sha256:2b86b4221dbee1ed32cd41eb320774840cf1f228b2305dfa1772698961e20000`  
		Last Modified: Fri, 17 Jul 2026 21:59:38 GMT  
		Size: 2.4 MB (2394236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fb79067db7c98b7d02dc23da156b13f779717e0245ebcbc0e1e3a77ba169b9e`  
		Last Modified: Fri, 17 Jul 2026 21:59:38 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
