## `openjdk:27-ea-31-oraclelinux9`

```console
$ docker pull openjdk@sha256:66a7c683d78d0e8d5b966b2277645576b70f1452b346949fcfc4487d19d642b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:8da39184a565181f618c42f8ca32aebdecfc732f561fb34e5b7ade5ee8d91061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313198197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa302e95304de63e3937a2988fb03e3cd6cbe4f8623f0e6b18e7d193292a0f41`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:12:03 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:12:12 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 23 Jul 2026 01:12:12 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 01:12:12 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 01:12:12 GMT
ENV JAVA_VERSION=27-ea+31
# Thu, 23 Jul 2026 01:12:12 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 01:12:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625698520e2f468efd1f086e0b3c93c5b6ccd9a20bed11337d36b0b5a848fe86`  
		Last Modified: Thu, 23 Jul 2026 01:12:36 GMT  
		Size: 38.3 MB (38283839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffd33c2b9b07ccdb05ec918040839ee031deffbf24881859ec6b9c307b64f2b`  
		Last Modified: Thu, 23 Jul 2026 01:12:42 GMT  
		Size: 227.0 MB (226987003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:60c4770b24e219374e1995658cc026096cbfa1f78e941461de3e4ef5ad51d354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88225abb6812cb23777ad371348696c7b7dddf2bafcf13522f678ce20a318db0`

```dockerfile
```

-	Layers:
	-	`sha256:453a89b693a2c1160923f3e9903c0f5463e8242930730672d729900f8080ef39`  
		Last Modified: Thu, 23 Jul 2026 01:12:34 GMT  
		Size: 3.7 MB (3652837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc7915a3edd62278258041603289b3ca98c69252a674f272cbe75b4152e2c3a`  
		Last Modified: Thu, 23 Jul 2026 01:12:34 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:9f635f71d1172af02d9cd902786a908c1ede90e59969d887e41d7363a52ec6b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310144590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab3ad97f19e10d2ca17b8c35a6dbd4548c607cfd5a76a6331afcd3cf7656323`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:45 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:56 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 23 Jul 2026 01:11:56 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 01:11:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 01:11:56 GMT
ENV JAVA_VERSION=27-ea+31
# Thu, 23 Jul 2026 01:11:56 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 01:11:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10b8acf1fa0787e447a8aa06e90fca3068fb85e48ebc83fc233eb810097fe7a`  
		Last Modified: Thu, 23 Jul 2026 01:12:20 GMT  
		Size: 38.7 MB (38679642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48326d1d9c5dda364c6f3078b08e63b8e751a111fa9672d2d1fe005971a848f`  
		Last Modified: Thu, 23 Jul 2026 01:12:23 GMT  
		Size: 225.0 MB (224986865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:d271897292860175dfa1ab9b972ad311a8f79799ff23564379d8e1c05934f844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4719d1616f212d15cfe0bf659c67f72c8cb026fd2faa03c44277387c2fb91e11`

```dockerfile
```

-	Layers:
	-	`sha256:4a80731545cbc23106d2016ccba74c206a69f5d005777448739450ba405de5d0`  
		Last Modified: Thu, 23 Jul 2026 01:12:18 GMT  
		Size: 3.7 MB (3650447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5858266a0d9a6ec3a5ceb161f309e2c1bc957be2fdfc3714302313bbf37a78d1`  
		Last Modified: Thu, 23 Jul 2026 01:12:18 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
