## `openjdk:28-ea-jdk-oracle`

```console
$ docker pull openjdk@sha256:c4520283f8c7e386c66feaa244457687c1669171788b0421318c5f938ea8b95b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:23d975423fbf6abfaf348c2103ed8aa500a8ab477f46b8647e611fc82887cc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324972070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1f09e3422e5ab48ff9ba4dd5eacc90f270dc37b1649df3a0aaed7623c6cbd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:58:10 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:58:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:58:19 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:58:19 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:58:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:58:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b050ea00cabd4d9d9fcad565b16f667f5178ad9049263769b8bc4220adc7d5`  
		Last Modified: Tue, 03 Nov 2026 00:58:42 GMT  
		Size: 36.9 MB (36894290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ac938e5dc5e25752b8b6da4147fe153782018303fac921cd868093ac810242`  
		Last Modified: Tue, 03 Nov 2026 00:58:49 GMT  
		Size: 243.2 MB (243227074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:d1d37cdbc1f0e8f61600c6995851a02491f2dad64443c4e83598f564119b92f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecbeb61faa60bf6c135353d8e338433bab02189ea6f78b2ea0fd7502926519c`

```dockerfile
```

-	Layers:
	-	`sha256:011949bb440e75d690cd09b6e31ce77bc6726c496420a072d93d5b42f153e090`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 2.4 MB (2358174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e907810fae36ebef4a01b7d9c2b7234103378f00b5b438d84152019f363ca584`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:31b49d31b265352f1013cb74e3605a1398db397605d60a88f1d0f7942769ef91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321497941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1eff50eaec98bb0dda11aa4c3f23d4b24739553f9136580ef3ec7f1f346021c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:57:47 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:58:11 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:58:11 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:58:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:58:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3892966d1a2b8b17ea81d0d4d3208e8c23015795be010503e4a757ca35daff`  
		Last Modified: Tue, 03 Nov 2026 00:58:37 GMT  
		Size: 36.9 MB (36943225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb81e6ecd32900933fb94d9e60b697c7882bfb526b1c2332718bbb42968de33`  
		Last Modified: Tue, 03 Nov 2026 00:58:42 GMT  
		Size: 241.2 MB (241249420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:0e013333c3dcca160cf250610c6b6dc7bbc7498d52ffaceecebe4ff25f4187ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2375767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cda8ee4e5e6e8cdede60490b22bc4d8612f827a48022d2ab4500ba507c581e`

```dockerfile
```

-	Layers:
	-	`sha256:5b45b1f2ad6a43c98c4d43363aee64d4f5509ee5d47ece8196100d3af973e3b3`  
		Last Modified: Tue, 03 Nov 2026 00:58:35 GMT  
		Size: 2.4 MB (2357702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bcd0866c8a96cb029765094097ab1be476a4093aa2ed8c6f1572a21749722d`  
		Last Modified: Tue, 03 Nov 2026 00:58:35 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
