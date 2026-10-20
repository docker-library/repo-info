## `openjdk:28-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:e8c725466b34bfe7d79c89e99bf88e52e31c35b79589f7e2789955760b354f76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:d4413cdeffd18d50095fea7095a1bf378042972504e11580005ad0eb85877759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324651410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2476b2ba1fa5f135b402bb1b43b68010d4ef11eade4f152c468cb4e984f2656c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:20 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:11:39 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 19 Oct 2026 22:11:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:11:49 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 22:11:49 GMT
ENV JAVA_VERSION=28-ea+20
# Mon, 19 Oct 2026 22:11:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 19 Oct 2026 22:11:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:06eb674b75f6977f06bebb62bdcbb4958a74e27d7ea78f4b4a0d4a529751239a`  
		Last Modified: Mon, 19 Oct 2026 21:32:32 GMT  
		Size: 44.9 MB (44919395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcbda8b0bd7b8deb59d0d3cc6d9446bbe414e04c2fdaf7e98c7e54a0a76e599`  
		Last Modified: Mon, 19 Oct 2026 22:12:13 GMT  
		Size: 36.9 MB (36897360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc1fd605d44edd2065443f86ced1b41d7200f6154086b8bb58d28d005b3c314`  
		Last Modified: Mon, 19 Oct 2026 22:12:17 GMT  
		Size: 242.8 MB (242834655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:af0ceaf62c57080ba1606f5bc35d4aa77390ba54dfc33db8c40cbd3a41974584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecfec441b223b22c7115b20e24284c3116bbab592813903fd0d483b768255b3`

```dockerfile
```

-	Layers:
	-	`sha256:891fc013f7cfc941f10ac98b7f9de16939829698afbf729b507e953dfd10d68e`  
		Last Modified: Mon, 19 Oct 2026 22:12:12 GMT  
		Size: 2.4 MB (2376713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04dbf78b3ac43706e7d87100fecd0360f17b8353a4fcef9f469acd1e9f101988`  
		Last Modified: Mon, 19 Oct 2026 22:12:11 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:216ed5f6a213aa22c772d5116783f89fb60bcf7f38d4ed0d5b6ca300a5abdd05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321178864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76221d52e2d9cd21364f77d846be1e26c549dd1e3cbc887dd18fcd3b30499265`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:14 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:14 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:11:23 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 19 Oct 2026 22:11:37 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:11:37 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 22:11:37 GMT
ENV JAVA_VERSION=28-ea+20
# Mon, 19 Oct 2026 22:11:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 19 Oct 2026 22:11:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0a8f8fa3fd533594ebbeda129c45aa129ac3ff81d4e7b1af5cec3bc2b5ce2d15`  
		Last Modified: Mon, 19 Oct 2026 21:32:25 GMT  
		Size: 43.4 MB (43359583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c687ba7f5a82b4fd2d80dde58fab27c6a5b3ab6ab3c35ef0edbf18188ec908d7`  
		Last Modified: Mon, 19 Oct 2026 22:12:04 GMT  
		Size: 37.0 MB (36955630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f29e5b9d3191e96220fb209c08e24e80f932faeae405e726eced8fb5b9d8301`  
		Last Modified: Mon, 19 Oct 2026 22:12:15 GMT  
		Size: 240.9 MB (240863651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:ef7bf845130918a2d9c862467840e09e86396eeb164caf2bd6e3c9ac08859dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632f127bc9bddbfd03dbc1c3d78c022c281877f78504f4c86c2798c7cffcd517`

```dockerfile
```

-	Layers:
	-	`sha256:1888c29e84acfb9ae1e56076d0a1672032d43d29b78d3fe230a687ec28f160f3`  
		Last Modified: Mon, 19 Oct 2026 22:12:02 GMT  
		Size: 2.4 MB (2376241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c64f214cbaf57df8ceae03a39d4755e839a12c104f62f781b8bef0f1520dac58`  
		Last Modified: Mon, 19 Oct 2026 22:12:01 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
