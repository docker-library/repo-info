## `openjdk:27-ea-34-oraclelinux9`

```console
$ docker pull openjdk@sha256:c7cf25dd77367db5159ec2cb627c6c9eed0ff776bd83275fd9e8d9c72ff3679e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-34-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:bdc63cb36e5c7d0ad172f34cd31619f3e539fc88630f9383f6aa6d46656b8257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313230111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3bbe4af1d85f541fa1e8f8374be7fb1704c7f0fe526d5da2c7cecad99b793d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 10 Aug 2026 23:34:02 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:02 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:02 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:34:02 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d5be924fe0a3eba4bd357de9ba2dd4283f185777c6606f8fa1e72e1c7266fe`  
		Last Modified: Mon, 10 Aug 2026 23:34:24 GMT  
		Size: 38.3 MB (38282992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e136e691c2c44476823638b38eb9aa142036ca674f5aeb7cafdc59efd40acab2`  
		Last Modified: Mon, 10 Aug 2026 23:34:27 GMT  
		Size: 227.0 MB (227019367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5c9c185e8402139b3a0f2200bd0f6f5bc15481954266ed19d45d53f73be09a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa635aae6d847154d9961c2a161137748284a2cebfd5754f04e83666bf65b4ff`

```dockerfile
```

-	Layers:
	-	`sha256:bb3f98eba101283b8f7427a818de1922b9c9de6e9adbc1871df2daadd587c9f0`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 3.7 MB (3652837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:018ff7f3645b5847f3c1640b5d1d5c74dfac38e987924e3e913194029eb50447`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d2b0787f3bf0db436c7349d026b41d57ee16c700fff5a12150a9c5fa11d26efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310161525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8dec9ddc4954cece5be0295fe161a333de2c42f013c5b7ec37223bc549412b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:59 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:07 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 10 Aug 2026 23:34:07 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:07 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:07 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:34:07 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb29dc4c8d5797e0491a5e3a0744b23d4cedcc6476e120505ef31b625942012`  
		Last Modified: Mon, 10 Aug 2026 23:34:30 GMT  
		Size: 38.7 MB (38686094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8f271695525cdb1e2c91d3d4fc20f65a94bc5d638794004c6ee88c910b1315`  
		Last Modified: Mon, 10 Aug 2026 23:34:33 GMT  
		Size: 225.0 MB (224997526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:dc686482fa8ec4ea8f756c31f8024dd511ced52fe43fd629cada61d68540d805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08af14e60fa6a2d168e6e7405c52a20afaca897ac9752ccfa902398957eeea`

```dockerfile
```

-	Layers:
	-	`sha256:962c33b529e2d89ce5d1915127246f1607973fedc45001188873b59dc5d5e193`  
		Last Modified: Mon, 10 Aug 2026 23:34:29 GMT  
		Size: 3.7 MB (3650447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3756edf255614baa23b15f3b8f35c35e6d8b085050396f025d5ff432f2e79d8a`  
		Last Modified: Mon, 10 Aug 2026 23:34:28 GMT  
		Size: 15.5 KB (15461 bytes)  
		MIME: application/vnd.in-toto+json
