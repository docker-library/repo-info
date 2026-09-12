## `openjdk:27-rc-oraclelinux9`

```console
$ docker pull openjdk@sha256:fbbaae1272d6f58e90c2d8d776d205d1635362b6b56ad156282e217d276316c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:82c33579af48a4261bb5c053a45f10d090a7b0d431b7b53fa19b44a214ba4e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313240111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1137955bcaba03532eb370573514176d59952fe4f82a1127dfa2df96f5a3bc5`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:10:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Sat, 12 Sep 2026 00:10:20 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 00:10:20 GMT
ENV LANG=C.UTF-8
# Sat, 12 Sep 2026 00:10:20 GMT
ENV JAVA_VERSION=27
# Sat, 12 Sep 2026 00:10:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 12 Sep 2026 00:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0723f1e077a1c24d9a3011e08136a55891dbf02e987a431735074a8cde1617`  
		Last Modified: Sat, 12 Sep 2026 00:10:41 GMT  
		Size: 38.3 MB (38287493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99518d21ff710f22595617dbba1cb0c083cbf9fd1c1439441fe906ac3df544ba`  
		Last Modified: Sat, 12 Sep 2026 00:10:44 GMT  
		Size: 227.0 MB (227021299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:4b639794003ffb820fbaafa20a0717f2690f7d15fc959965fdb1f347d8e7efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9db45e011d932cf16f472ddec27c8d81012372d28c81264911bd022ab8951`

```dockerfile
```

-	Layers:
	-	`sha256:c65a36de490bba1a5b90a8336d1d45e2525c369b7a23fe980d2b61097d46d9df`  
		Last Modified: Sat, 12 Sep 2026 00:10:39 GMT  
		Size: 3.7 MB (3652757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c701bc864a0341a6d4dffe658b0df568f293d3790386ee5da95941a055510123`  
		Last Modified: Sat, 12 Sep 2026 00:10:39 GMT  
		Size: 14.7 KB (14739 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d041507d019a5d14895446a2611f159b23e93a239f5c59d11db76cedd34c7a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310165027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7e2ea5663120d1ea5a8db011a9529d7fb79aca5f885c5f1a1f3482c2f4f141`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:11 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Sat, 12 Sep 2026 00:09:22 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 00:09:22 GMT
ENV LANG=C.UTF-8
# Sat, 12 Sep 2026 00:09:22 GMT
ENV JAVA_VERSION=27
# Sat, 12 Sep 2026 00:09:22 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 12 Sep 2026 00:09:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897165594c73790e9d4d129761e86b3fca124fb7d25e42265c21d29e083e6e9e`  
		Last Modified: Sat, 12 Sep 2026 00:09:47 GMT  
		Size: 38.7 MB (38687701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f2f1b0cb4456d9fb2989749378058d1f892c41e684fd1a8334db243b37090e`  
		Last Modified: Sat, 12 Sep 2026 00:09:51 GMT  
		Size: 225.0 MB (224999180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:3a8be40d0cd70f615982c5845300274677eca52e22786ed8dc3674e5b915bca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024307d0e7be2e9b67130cd84291401cae5da5e06eb185d5c765470bfe11c584`

```dockerfile
```

-	Layers:
	-	`sha256:6036583d3c64c19d5f8acdc6ecbb9819fd1c884dcc648d997ef7f5e41cef4e58`  
		Last Modified: Sat, 12 Sep 2026 00:09:46 GMT  
		Size: 3.7 MB (3650343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e33759c92c9a44016b210da51e4abc7588e73b33a09cf8f4ff7a6a8e540efebf`  
		Last Modified: Sat, 12 Sep 2026 00:09:45 GMT  
		Size: 14.8 KB (14834 bytes)  
		MIME: application/vnd.in-toto+json
