## `openjdk:28-ea-25-oracle`

```console
$ docker pull openjdk@sha256:74374cdadd6fe6d085a8966ebf0ca6a5d296ad41767e37532c2f92fce526e684
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-25-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:370f5e597f72318e0f539c60fc0c734c6b688e32dbbf91166fc372825b80e623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.8 MB (321834791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9984e56e4dc8ce0586ec7088bc7d0d1732fbd69bdec2d3848aae3f810f61b8e2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:49 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:49 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 00:07:33 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 		dejavu-sans-fonts 	; 	microdnf clean all # buildkit
# Tue, 24 Nov 2026 00:07:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 24 Nov 2026 00:07:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:49 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:49 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e8357e9f1788d50d2e0070e1410e6f4f83befb65112b5c98f50518b6c919f036`  
		Last Modified: Mon, 23 Nov 2026 23:26:59 GMT  
		Size: 37.6 MB (37634047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7773406336f75bf72dafe741ce96433e40e5d4b17392921302eb0cc2eb6453cd`  
		Last Modified: Tue, 24 Nov 2026 00:08:14 GMT  
		Size: 39.7 MB (39668458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5afd5bd85757db0af30acde749aff634899ec9695b032881a6f8ac6932ab3745`  
		Last Modified: Tue, 24 Nov 2026 00:08:20 GMT  
		Size: 244.5 MB (244532286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:897e39517a0f4e577ef35598920754c7caa26539f6e5379e26b8d4eb6ef4ff35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2397044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e571f56240acb7b714ad73d471f380430fc3bd503cb824b5c79028ad7c9fb`

```dockerfile
```

-	Layers:
	-	`sha256:a77d70d1b3c61c747e2c651f7a644ba8704ee4a6689874f2a3891918ecb3bb94`  
		Last Modified: Tue, 24 Nov 2026 00:08:11 GMT  
		Size: 2.4 MB (2378580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e9d63b02858908da53162b7d85d1f7b69141bc1e98a0ae1c78d00a9b18b0689`  
		Last Modified: Tue, 24 Nov 2026 00:08:11 GMT  
		Size: 18.5 KB (18464 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-25-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b517f1e21d46e3848d75f60c1c9d2b6fb4b3850cf33d80c73d56ce7eb0599ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.4 MB (318374616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3072235c29a2e65a98dbb944c7001968517be01de0cb2f35f20d30dc527ab0b7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:38 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:38 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:59 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 		dejavu-sans-fonts 	; 	microdnf clean all # buildkit
# Tue, 24 Nov 2026 00:07:39 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 24 Nov 2026 00:07:39 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:39 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:39 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b8638bf1dd652500e04f45c2c4c7438e6674f38c50c59bd8901e6bb350edcd39`  
		Last Modified: Mon, 23 Nov 2026 23:26:48 GMT  
		Size: 36.1 MB (36097882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075936bc7bf65c80eaa1e3698c3c4fd1a9e268fff4a9f8238980a60b3c1e20d5`  
		Last Modified: Mon, 23 Nov 2026 23:42:37 GMT  
		Size: 39.7 MB (39734704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ae1164c05e3a169f2a72e87c527223978b86bd64bbceb6d262387f7ca41964`  
		Last Modified: Tue, 24 Nov 2026 00:08:08 GMT  
		Size: 242.5 MB (242542030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:86b17dae4d2fca4113bc7d336b806d43bf684159cbb2e52031ca5a1992d551af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2396787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d098c592d8d46a8a06bf0f6381542721ef428e201b8ced7567590044a5fd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:074de5df36caa1f597a46710c039cf10bc92dbe2f769b869f9aa71053e7c5b17`  
		Last Modified: Tue, 24 Nov 2026 00:08:03 GMT  
		Size: 2.4 MB (2378108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:474ea8155b7976f3ec818b9f2e52c3b21bdc884446007a615ca9f631e8dd0a3b`  
		Last Modified: Tue, 24 Nov 2026 00:08:03 GMT  
		Size: 18.7 KB (18679 bytes)  
		MIME: application/vnd.in-toto+json
