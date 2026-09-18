## `openjdk:28-ea-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:78880917214883ebe862a16fcc2ad0ed7da833642e928ad8b8c4fd026e9659ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:e95c4109d65c3123fdf989546a64603408c27a7d8dac201214c9d6227ad6665e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (328996065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd98d712a1f651e9f3e2b45dd90ffbce73535fce449357cc7eb6054ec1a78e51`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 22:29:18 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 18 Sep 2026 22:29:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 18 Sep 2026 22:29:28 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:28 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:28 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2e7de48c9852019971d9e1acf5f9f62cd22a72f4cfdcc67f99553bc59f6b14`  
		Last Modified: Fri, 18 Sep 2026 22:29:53 GMT  
		Size: 38.3 MB (38287695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6879bbcef733964248ee5be0bcb94f963adf25b5023a3256ee95762507b83293`  
		Last Modified: Fri, 18 Sep 2026 22:29:57 GMT  
		Size: 242.8 MB (242777051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5e1f03843dc40c2e86ad104d25136c4b773ae22b515d25d61e77b175c81ed951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aed6b318083a71c7304183f4e385e1528d749d1a8358025e69bce3164746325`

```dockerfile
```

-	Layers:
	-	`sha256:de071525dad7ce2db0515bb840cf7e66945115dc2b16ca7811d87b89fd6081a8`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 3.7 MB (3656644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f08e59545f1ae0ee8b226e9ff156266fdb189059eae17c7aa00d78ff12cc3e3`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0a477592be6d0d918471e1b449775faa3dc9aa52f57cd961fc9b73e43c06cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.0 MB (325986183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b9ea87b60ff9bf4449758bb7c683b70161709087ff636da8b5a6ad9fd482c5`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 22:29:01 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 18 Sep 2026 22:29:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 18 Sep 2026 22:29:11 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:29:11 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:29:11 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:29:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:29:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c4e6c7c3228795a7886664b7ca684e8c431aa8abbd0682f05fdb0e9915bdef`  
		Last Modified: Fri, 18 Sep 2026 22:29:38 GMT  
		Size: 38.7 MB (38687849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1104c76f0e1693796169477e0d64d0b889b697c6d70759daba6a63f468a18`  
		Last Modified: Fri, 18 Sep 2026 22:29:42 GMT  
		Size: 240.8 MB (240820188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:b7669658b38d675120a279464038f025fdc085f20cf364f89d9a3fecb1aaeb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636d82cdf7623be4e23e1e51485fedc3c909cdd3ef9e1daa7707cf129b6409e9`

```dockerfile
```

-	Layers:
	-	`sha256:333d38540384175021c58d2570f0e3f2a36dff9d9dffe6c3b0d819344c278929`  
		Last Modified: Fri, 18 Sep 2026 22:29:36 GMT  
		Size: 3.7 MB (3654254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3255e31fecf02c705a6f2a959717a99ccbc8f625c940740a81d7e9a5f36972`  
		Last Modified: Fri, 18 Sep 2026 22:29:35 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
