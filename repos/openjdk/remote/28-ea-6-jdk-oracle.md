## `openjdk:28-ea-6-jdk-oracle`

```console
$ docker pull openjdk@sha256:03dc517038fa40cccbcf3ba765bd8b9a8d3fa5aacf0b7da7e7538fcc3347148d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:779ae50cc5f579f82fad0fdb928a52463c0c7c177d062454cd99da320008a552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308216082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2e3aa5924073d216ed43f2ee4ac9659ea90729c3cd243a36d0e800c25091e4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:37 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:45 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 10 Jul 2026 17:10:45 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:45 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:45 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88dced95784962e55f276e91fbd0047d5cb3c085f977d12d6b683d3f797a664`  
		Last Modified: Fri, 10 Jul 2026 17:11:07 GMT  
		Size: 37.7 MB (37687941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d636a6edcba26ccdf849c9f592a6b1ce59f3ce02a34163ac775219ff7af83976`  
		Last Modified: Fri, 10 Jul 2026 17:11:11 GMT  
		Size: 227.4 MB (227447559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:7c5837309b574969962d558b020b1087533d00f708b3d52455cdd4e9c41bba20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90a01ec137543d8e96fb4ca2be9365e63fcdf0396842e47ecfa9bf711bac475`

```dockerfile
```

-	Layers:
	-	`sha256:594b07e2cd143a6414b3f4d6d5d8c4ad19b7abb347217ca70e1dbc56929e8150`  
		Last Modified: Fri, 10 Jul 2026 17:11:06 GMT  
		Size: 2.4 MB (2366446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08c7881ff2ddff527d1d97a211684092fb720b03b3d5aa9e53b7307b69a6edde`  
		Last Modified: Fri, 10 Jul 2026 17:11:05 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:df8aba11d52d94c985781fab64088f3e80878fe949a10ba5ada5d99f5148672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304698730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dffa6791da476ae9bc66602c6d80e84d0b091c24bf0476c6894627c378b1b4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:23 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:32 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 10 Jul 2026 17:10:32 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:32 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:32 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:32 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1779d205d5eb35c796fdc3372e16d1357d0ed121e4a7d7fd0f4e598be4a40e4a`  
		Last Modified: Fri, 10 Jul 2026 17:10:55 GMT  
		Size: 37.7 MB (37695888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d369fd5d47ddf1a25bd278b982c0cce94bdb9dc2153f5add2f9d05417e6a73f3`  
		Last Modified: Fri, 10 Jul 2026 17:11:00 GMT  
		Size: 225.5 MB (225507147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:33b7fd4f53b80a69e0a4326b37d565ef86e59d84026288ae5d222a2e4119a7c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e677de65666025a1a0cfac9b20d5e2e502c807ad5c00ee595512eaed6b46524`

```dockerfile
```

-	Layers:
	-	`sha256:65c0c7315e945bc62a9c17fab39b78cdbd11d9d3c50535e51239a415a9e0672f`  
		Last Modified: Fri, 10 Jul 2026 17:10:53 GMT  
		Size: 2.4 MB (2365974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1bdd9e1af137219df9e59cb21cfc687f38f0bd3579117c5828a194232c20fdd`  
		Last Modified: Fri, 10 Jul 2026 17:10:54 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
