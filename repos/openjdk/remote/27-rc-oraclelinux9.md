## `openjdk:27-rc-oraclelinux9`

```console
$ docker pull openjdk@sha256:2cc50a4721849dd5837ea8a053702c64434d0b262f0be21c4a06ac0dcc752d3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:893d1543a0b4c488d1c06f23beaf5b257ebddcc3b5a4d7f82cd7c7ee90df86ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313233802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b4d84b511eb8854599da2afaf8f42c3fb4691812deda936710e3994fde2037`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:43:12 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:43:25 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 21 Aug 2026 17:43:25 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:43:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:43:25 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:43:25 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:43:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5527e4951fb60eb6380f02cba37def6a17f185e2acc48dbb07f66c6a44c37378`  
		Last Modified: Fri, 21 Aug 2026 17:43:46 GMT  
		Size: 38.3 MB (38284810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ea99b3abce2e40b4a91444f71c3f12aaa269b08196599c7eadff637687a39d`  
		Last Modified: Fri, 21 Aug 2026 17:43:50 GMT  
		Size: 227.0 MB (227021240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:ef39381aae2c7856b3c23a7b5f4153cffe1ce474fa7168a43ab669b775d877ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3666896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f58d43f0375180d49d94e125bf9f469486bec88876b63f2d3220eba070a16d`

```dockerfile
```

-	Layers:
	-	`sha256:7ac28d00ab618002a252655d8f2493207c7e657fedca251dc13134fcc95920b8`  
		Last Modified: Fri, 21 Aug 2026 17:43:45 GMT  
		Size: 3.7 MB (3652157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecb9be7eed44ff73a265e04756d2627cd496b59ff36c5b754bb2e714b2ae1c81`  
		Last Modified: Fri, 21 Aug 2026 17:43:45 GMT  
		Size: 14.7 KB (14739 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:51ab62b165c1c6658fe58e4a34b349773703b8d0e9f864ec1cbd68633d9cb905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310163344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c0424a37231b9ea8be4ca562f05fc863e347e72d33feadd455950d61002087`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:44:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:44:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 21 Aug 2026 17:44:16 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:16 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:16 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:16 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c21350153ec1f8341b6d045845916dbad3b9e81c7c9594d64c4a491d29416d`  
		Last Modified: Fri, 21 Aug 2026 17:44:40 GMT  
		Size: 38.7 MB (38686359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60287761bebeb15bf9271a68634edc1caa37328dfa1ee21a8c1cf34ec8c9277e`  
		Last Modified: Fri, 21 Aug 2026 17:44:43 GMT  
		Size: 225.0 MB (224999080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:afded66d6a5e5ff50c1b685e87431c5bf52da81fa2703657ea34779309c0936b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3664576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89d8a454e2541a276feda58b75c60171e7cd422d9d0e15c673b02861386b7d1`

```dockerfile
```

-	Layers:
	-	`sha256:a7a3b217a36617594cff56758ad3a244db9f1ecf032e27247a1d2373c1f367ac`  
		Last Modified: Fri, 21 Aug 2026 17:44:39 GMT  
		Size: 3.6 MB (3649743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22f28391800e205b4f22f633ffaf519bd71adeb46afe9b6ca7b799dbe9f68dec`  
		Last Modified: Fri, 21 Aug 2026 17:44:38 GMT  
		Size: 14.8 KB (14833 bytes)  
		MIME: application/vnd.in-toto+json
