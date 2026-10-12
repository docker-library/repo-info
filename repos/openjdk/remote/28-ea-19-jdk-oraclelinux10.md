## `openjdk:28-ea-19-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:b0eb57bfe8624ceb4fa5e7e015033f280e77c591f61b13adf1b3b2ca14d0ea21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-19-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:c287ee7f259db6873523978f948fb252845411ae75364719c31957a5426bf16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324531520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad369a7749253b835a921d21bfc31272c7ef75e2a49e7b520f0ab8ef043be6f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:28 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:28 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 22:56:15 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 22:56:29 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:29 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9f79e87364384938c129a36c63059f3b9f44b0ecc5bf0b9328aa7de55fbf2483`  
		Last Modified: Mon, 12 Oct 2026 19:10:38 GMT  
		Size: 44.9 MB (44901103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8423331ba8632e7312be18b73f854ac06c31013de66e72d2f5c4098b1c78779`  
		Last Modified: Mon, 12 Oct 2026 22:56:53 GMT  
		Size: 36.9 MB (36878059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377d3be02ae4d994bd31ba8eabb28e2b6caaf1a196cc92aea363cc33e2dec36c`  
		Last Modified: Mon, 12 Oct 2026 22:56:57 GMT  
		Size: 242.8 MB (242752358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:cfecd0b52ab514e3c9c55e3d598316571a3c72a0e80cfc3b69e61f1f8d681ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9742f09dfc385ceb04fe972128082be20ecd393eb354ce29707aa0ce66fe5e9f`

```dockerfile
```

-	Layers:
	-	`sha256:6627dbc1bf993518ab6deb754583c209cfaea68d9b2622cdda47e453270878bd`  
		Last Modified: Mon, 12 Oct 2026 22:56:52 GMT  
		Size: 2.4 MB (2376705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4c327290e0ad29c12d12c70ff158a8ad7c306fc4094fe4a17b9c5f70c866eb7`  
		Last Modified: Mon, 12 Oct 2026 22:56:52 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-19-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8624959185ef355d049e850dd00a91f0d47d643dc349912f7b97de1402095529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321099646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0493dcc533f75dce049eb0a13bdb98b910c16ff8adda4e638992ce0d14e6705d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:09:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:09:53 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 23:05:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 23:05:52 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:52 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cddd3cf7f96f27e9d7642af5cb3594a4f8baf2a6c7d24235bfce815f70f15fd7`  
		Last Modified: Mon, 12 Oct 2026 19:10:04 GMT  
		Size: 43.4 MB (43361849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46877e2cddee2574975a01be79f81407a31887eba6b64740329eae9daff9b2ba`  
		Last Modified: Mon, 12 Oct 2026 23:06:18 GMT  
		Size: 36.9 MB (36947319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c427b88c415eca94b369b4c806fe3ba9448e823c36993d5d206bc606cf9a1df2`  
		Last Modified: Mon, 12 Oct 2026 23:06:22 GMT  
		Size: 240.8 MB (240790478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:aa97a7ff55302f85ebaf93ac112a60699c9928fe560304cc5a40fe304a70d024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a5feddc3a4ba2b10edb1112996218302a7f8289a399b78579af493e0a5c347`

```dockerfile
```

-	Layers:
	-	`sha256:81fb527db4b51e55306dc25e6566fdd1adb81617fae2eda88abbedb5bc2f86fa`  
		Last Modified: Mon, 12 Oct 2026 23:06:17 GMT  
		Size: 2.4 MB (2376233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f47b65a070adbbd322f8ea0d9114c87ac508892e0f8b5e182d19c4529021681`  
		Last Modified: Mon, 12 Oct 2026 23:06:17 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
