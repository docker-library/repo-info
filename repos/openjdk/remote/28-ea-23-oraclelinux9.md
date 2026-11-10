## `openjdk:28-ea-23-oraclelinux9`

```console
$ docker pull openjdk@sha256:db958f15c41a997a5b324a531648c3062206f7e030907b1523dbd49b058be8ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-23-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:b45a4fe2950a8a4d9303b2218c5c67ebf83999c243545d706c1f8cbb9b9296c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328693285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca9ba5adb468098feb48c5b4e45b209360ae82b7a5a684ec5ad04988d712888`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:44:25 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:44:36 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:44:36 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:44:36 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:44:36 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:44:36 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:44:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63213e821be150a91de90b0047357cd641006c1a4f4659ea60178f041ef7835`  
		Last Modified: Tue, 10 Nov 2026 21:44:59 GMT  
		Size: 38.3 MB (38265608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c70c6f66b61219c1bef8c9b54615a1c8c770d79f2f8f070bbcaab0f6c6b473c`  
		Last Modified: Tue, 10 Nov 2026 21:45:02 GMT  
		Size: 243.2 MB (243241068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:511b53338b2d5cbb7227c5800c942f4f5c7594525c08fd39d6599cb0fd14312f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0b82e501e97e203abad96a4014829945daae0a054aaa7452fbfb1aacf2ec32`

```dockerfile
```

-	Layers:
	-	`sha256:a63d7b06ed5a201acf358210b38ac00a9564bf30c904ad197dcb08de52df0c1b`  
		Last Modified: Tue, 10 Nov 2026 21:44:57 GMT  
		Size: 3.6 MB (3638153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e2803708671ba21656ae0012b2d2b4d1331b9f6d9f6d90682f88be15c959f0f`  
		Last Modified: Tue, 10 Nov 2026 21:44:57 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-23-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1628f8c8d25380a918beed2b4f699e29d37225d46fcbb20d1bdb4597e8b92ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325670786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9063b6abe54aa4b5320ab3bf4d10ff18e6752b44a2322d9e6a690c3b4abb40ba`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:46:53 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:47:05 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:47:05 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:47:05 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:47:05 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:47:05 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:47:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58725697491dad861715239a74be3a225b25e5321baa7579969e27154c89b46f`  
		Last Modified: Tue, 10 Nov 2026 21:47:31 GMT  
		Size: 38.7 MB (38658911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0719e78c0f1a81a7ac2a4d8438f5e76220194b9664cc8cf4d1de90e3688e0a`  
		Last Modified: Tue, 10 Nov 2026 21:47:34 GMT  
		Size: 241.3 MB (241277835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:7a26c8b9a51215d6bfcdf32f8133723845168371dd8209e919474bfd74315e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99c205a0a9daddb43731a8660801a48b95254a77d47eeceae1eea274d12d17a`

```dockerfile
```

-	Layers:
	-	`sha256:6544b0e9d04d80236518d9397755a5b4ee8381594fb4c9c202084b9b9777deae`  
		Last Modified: Tue, 10 Nov 2026 21:47:29 GMT  
		Size: 3.6 MB (3635763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:248899e086d6b25b7424ddf0fbcc978dafa19aed3c73bd6db86b710651bd48af`  
		Last Modified: Tue, 10 Nov 2026 21:47:29 GMT  
		Size: 15.5 KB (15461 bytes)  
		MIME: application/vnd.in-toto+json
