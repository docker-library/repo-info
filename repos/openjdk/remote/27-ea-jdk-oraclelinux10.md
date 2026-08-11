## `openjdk:27-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:8fcbd93ee875147d210c5b110b74cc597f83149a55b183293b171a4b68d34321
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:f44b8443652c721877831a6fc83863a9bc897f5b40abb83b96d5989d2fe23f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308719070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9507760a506cc120af74a8dfca102f6192ceac5660aeae8105587c256bd4ab`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 10 Aug 2026 23:33:41 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:41 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:41 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38229acdd800ed8a6f2313ce547a05e98daea6b485ecd3b595bf91cbc26be674`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 36.9 MB (36857092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c157bbf6f4e377632647c66a17c207bd05583132475d85e04f04e4f9e812e9b9`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 227.0 MB (227019528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:becb9776ba249b50f6fa63c49540c6e017e536262daf6a65cad8b407eab013f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394fbcca2b200f10653268b033392afe7c42ada9791d2fd319e02fb93ee3a630`

```dockerfile
```

-	Layers:
	-	`sha256:fe0b3127543cb9aec9600fb9f3c8202db0fbd526fb1e5d9d4d7e82f47d3f1341`  
		Last Modified: Mon, 10 Aug 2026 23:34:00 GMT  
		Size: 2.4 MB (2373382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4d9bee48e36b0562819b1c43940d0639340d0d15a6a3e685f52dbe27d3cfcdd`  
		Last Modified: Mon, 10 Aug 2026 23:34:00 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1523bf035a1bc888122d34317d6abb6fafa2fc48880e8bae703bcc673611d527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305214216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7873f72a36973f61e418cd033c8de1a172be1c9951a0949f84492e7a222867`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 10 Aug 2026 23:33:41 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:41 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:41 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:41 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370035114be21de13ba945265d266d9dde4eb39d47856e6f2261e1fe8ab4b28c`  
		Last Modified: Mon, 10 Aug 2026 23:34:04 GMT  
		Size: 36.9 MB (36915105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497a37e0eccb5626e13e9b7f5a9277e0fa484ffbf001a00eebb081892325d251`  
		Last Modified: Mon, 10 Aug 2026 23:34:07 GMT  
		Size: 225.0 MB (224997687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:7c2691edfe63af0ad8fe4b6095feac9dd8d287ccabcec8dd3c11fcdcf5e581a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8138a050e14d4846fada46624cd8e8d5a69caef567bc0bdc974ff2f97455ad5a`

```dockerfile
```

-	Layers:
	-	`sha256:957583bc1ccbd9f9e3c18560ff3ab54647d683f96052fd599ce5482f1fdfc0c2`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 2.4 MB (2372910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d4ebd5a5ad9ed3ec87e883727a924e0cabfc4e95e1934020f944d027fa74cc1`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
