## `openjdk:28-ea-22-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:89dfc056f1396fbb09b1292d64de49cf80e037206a206610a8b90398484da782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:772ba9c7046f7dbfceac86bbb3c2362bb4725fe10503fb65d107f984c0c8d0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328678704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12a076def30360058b9dbbcf8fa7a6608bff13c1b0097372a2a8f887bf48ea9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:59:04 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:59:14 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:59:14 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:14 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:14 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:14 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0e295a051711936bfe8e20016e4b190f999336acb95c08bfb50cc647983084`  
		Last Modified: Tue, 03 Nov 2026 00:59:39 GMT  
		Size: 38.3 MB (38265187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f54d695bcea9b1ab4a47453ee41e03351de4eeb562e3b6a21837f027cd5255`  
		Last Modified: Tue, 03 Nov 2026 00:59:43 GMT  
		Size: 243.2 MB (243226908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:08ffb71c440b8e799eaed52706514d3c21fba6164632d1967ae0100c759b2719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d388a4aa53f4cb81301ebbf838bf63407e258b33e16c3e6d0a1696aa568eb344`

```dockerfile
```

-	Layers:
	-	`sha256:fde8c9d1b586b9675e37ae7a2835ece8b6ab668f143c09ecc1861631ca4dc0a1`  
		Last Modified: Tue, 03 Nov 2026 00:59:37 GMT  
		Size: 3.6 MB (3638153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d49e1f3833fd7fccffba433b42310c78f6a402a7d3e43a6086825ff3de5c95f4`  
		Last Modified: Tue, 03 Nov 2026 00:59:37 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fff9938d6f17e0526c98b8c1ae70eb5abec55b528cbef44996dea506311584fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325641990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73fe64de016e48b62b75651a2098e595d8ba8099183c98e1fe917bcf45e71f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:58:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:58:51 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:58:51 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:58:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:58:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75121c275aef8552776d786ad636807daaebf1fdc3066828ac11586c136e76a2`  
		Last Modified: Tue, 03 Nov 2026 00:59:17 GMT  
		Size: 38.7 MB (38658640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f790893c97798119110257cb7d8942607e6c39833ca6c47804b5c165c9a9ee`  
		Last Modified: Tue, 03 Nov 2026 00:59:21 GMT  
		Size: 241.2 MB (241249310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:e4bf4c8d1391ca8d417b5a7715ae72dec7b637ebf47fc0d1b037e7197eaacd83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7fee4e2384d34b5f55b87a113e28a78b7fd5b0b411c16249b754ae2c18bba3`

```dockerfile
```

-	Layers:
	-	`sha256:817f9ac25c1ddcc929d550a1558119bf90f9506d98539b9fc66ade23e3a7cb61`  
		Last Modified: Tue, 03 Nov 2026 00:59:16 GMT  
		Size: 3.6 MB (3635763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24f2243bad9adbacf14d8dbe2c4567a7b34c586f00f1c8a74b8516aad7b1091f`  
		Last Modified: Tue, 03 Nov 2026 00:59:15 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
