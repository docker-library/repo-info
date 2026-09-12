## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:4885ae1f6bc90e2e755fe0d5056521b859cd2b9a291d9dffa5e7bb3dfbfc6627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:6f11299b25dfa37417ea8b2c6af0eae9d7fe9a2893664a4a9da9ad4c0cb4a5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328771305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9475aa8f1e93891cda78838f3c0928fe40860f10f05d3e2325523cc974f552`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:58 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Sat, 12 Sep 2026 00:10:09 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 00:10:09 GMT
ENV LANG=C.UTF-8
# Sat, 12 Sep 2026 00:10:09 GMT
ENV JAVA_VERSION=28-ea+14
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1892e051ad507ceaf8eefd80d763095a6222f1325817f34946ee3c990afaa048`  
		Last Modified: Sat, 12 Sep 2026 00:10:35 GMT  
		Size: 38.3 MB (38287773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93af099808fc73f0616b5cf57bb41a42fd1800c77ceb6de4fd278a6730e30df`  
		Last Modified: Sat, 12 Sep 2026 00:10:38 GMT  
		Size: 242.6 MB (242552213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:b776bb29957d850bba7c676911ef99373170aa5cad0c99d24d3156faf15d6f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30110938e1375cff3e10d715bf67b9db00271258852884f20bff68bb2d4ecd7`

```dockerfile
```

-	Layers:
	-	`sha256:eed1e490cafd95c0fe558a315969082abf0ff59d23edcb60904c87497c7166ee`  
		Last Modified: Sat, 12 Sep 2026 00:10:33 GMT  
		Size: 3.7 MB (3656007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a789fe655330674e09344587316981b21200858d8706641a5e1dfda10802132`  
		Last Modified: Sat, 12 Sep 2026 00:10:33 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e1d7b0baca9d8db260aca6a43abb8daf0e1e0e4f5b7da3ceae0b68adcfa59e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325793721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6deda89a91a9337dc5c8bac88348578e695181d45de97e410e5bcbaf64a16`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:47 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:10:10 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Sat, 12 Sep 2026 00:10:10 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 00:10:10 GMT
ENV LANG=C.UTF-8
# Sat, 12 Sep 2026 00:10:10 GMT
ENV JAVA_VERSION=28-ea+14
# Sat, 12 Sep 2026 00:10:10 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 12 Sep 2026 00:10:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d03f6680de842ccf2dde43b80da82b72e31cd7c6289019bc112f59ca075621`  
		Last Modified: Sat, 12 Sep 2026 00:10:36 GMT  
		Size: 38.7 MB (38687651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6f1d77af913e01b2de47ee7ae27a230c59eb720895cd9e5bbccab7ad34ec9a`  
		Last Modified: Sat, 12 Sep 2026 00:10:39 GMT  
		Size: 240.6 MB (240627924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:fceb20620473ea51a11460354617262de7c5debf462128df2db152c189d870a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5280b6c89d178ca2a93f8ca1054c5559293d7cfbc9edcb2095c567973c52cb08`

```dockerfile
```

-	Layers:
	-	`sha256:a9f3c92e7827c7a23d8e2a70975087bf306698c2d6cb6bdd3841c568af642e4c`  
		Last Modified: Sat, 12 Sep 2026 00:10:34 GMT  
		Size: 3.7 MB (3653617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bab1c99b1a9286342d87b2726417b34624b9c468c6e92a78fbf9bdc18b5b4bbd`  
		Last Modified: Sat, 12 Sep 2026 00:10:34 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
