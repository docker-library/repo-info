## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:5f6e98447ef880cfc9d257bc20a8d44e795a32744d9d954382e557ba7241fc07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:4f25473b804a8361ab9978e1b403b94ef4c31f4159177a698e790005a20b2d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.3 MB (328265508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7e31b882513b65b0064b770ddd9a830417a4b60192f9f87541c30b9f26c864`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 22:56:49 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 22:56:59 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 22:56:59 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:59 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:59 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:59 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc20c2e1a95c6f0ebb8df82fa4c326a4dce3708d03dac760134799c2c914463`  
		Last Modified: Mon, 12 Oct 2026 22:57:25 GMT  
		Size: 38.3 MB (38266340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f424b5c9d59616434d4e7548015f457f9c344da12fa52a0d7dace4cd3ffb2`  
		Last Modified: Mon, 12 Oct 2026 22:57:28 GMT  
		Size: 242.8 MB (242752050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:e4495edf8a26c0c94126fea69e54a61a435a33aef2190bf1d18eaab2c6415f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd86e88c80fe947c7bd67e640b753140f883dc5e0fe88ce45d3b5d4b066b2b91`

```dockerfile
```

-	Layers:
	-	`sha256:3db5cd5f444bea75dddcbeb2826e1bbc81b925599785074d778650d5fd96950f`  
		Last Modified: Mon, 12 Oct 2026 22:57:23 GMT  
		Size: 3.7 MB (3656664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f6546d75dad0ba9a979fdc6e422e59dd43e8ae4aa080ad5710437f5999d385`  
		Last Modified: Mon, 12 Oct 2026 22:57:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:db28b16b59c31dc8f038f4e615e5fa0043e8a055ec3fc0299a9dce9566a4d524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325248518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e5e1221bdece36c20c91a0bf606f720f6560959b26d8dfc98c8b57ff96e6c6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 23:06:17 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 23:06:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 23:06:44 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:06:44 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:06:44 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:06:44 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:06:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3ff9b46e9e5d4834ac3d557e990aacb905229a755e4ba2b771e28b4ea97d40`  
		Last Modified: Mon, 12 Oct 2026 23:07:09 GMT  
		Size: 38.7 MB (38657457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7704286335e465ea8b185c8b18eafae4f2cee358d71bd8b7863afcbdd488b0f`  
		Last Modified: Mon, 12 Oct 2026 23:07:13 GMT  
		Size: 240.8 MB (240790374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:6a27dd7b7e7b0cddf3d22620a3dcec9c9cdcd84f78c9572cd56c96ff32dd19fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728d697314bd2b14eec3c2d407e84c79a228bc4fc4fc62b874a0ad7726f92ae3`

```dockerfile
```

-	Layers:
	-	`sha256:a49600f149da3d20c9045d26cb0afc2cc16f3de94dde541bb70618c6de2ace0b`  
		Last Modified: Mon, 12 Oct 2026 23:07:08 GMT  
		Size: 3.7 MB (3654274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acc33fdf0d16a5d1debc75a5df628eebba31b15d1a3477a953e8a940e21a5e84`  
		Last Modified: Mon, 12 Oct 2026 23:07:08 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
