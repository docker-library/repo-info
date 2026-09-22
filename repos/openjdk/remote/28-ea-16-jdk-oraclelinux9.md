## `openjdk:28-ea-16-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:e9418b14d74c5bbf04a6b47fe5d4f0441b02c15243a9fdbf0fb84a1ee6ee6c44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:79cc3ede9f7ca11a993bf0c34060f508b9615c04a20995050c6765ef67a43c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (329016523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb0b29904821f3b8bc5a2bfbea71899d9e525dc4d100ccf38e3a80eba45a93d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:45 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:45 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:45 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:45 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:45 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7ae706b1ed0786fa3414f92656f8f3c1480aa09f2155f478edb320be4c075`  
		Last Modified: Mon, 21 Sep 2026 23:08:07 GMT  
		Size: 38.3 MB (38297915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f532e83e048c428c7fd5db515c28cb3e7416adb2255000568bb027878c5592`  
		Last Modified: Mon, 21 Sep 2026 23:08:12 GMT  
		Size: 242.8 MB (242777095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:655b9dcbc0243d6a215faac34e1ae2f48243a540252ce2cb4143bf031d6d7e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dcb4cc7472e92df2a9db660bc122be43065e8630206f97c6d118b0085b5836`

```dockerfile
```

-	Layers:
	-	`sha256:7ff1572deb0707e288a1828d644495c43c01f6f280d38e73bcc7a8c311d7a88d`  
		Last Modified: Mon, 21 Sep 2026 23:08:06 GMT  
		Size: 3.7 MB (3656652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb42e44e860779880176885d5a279478e57606935fcbad87d96e7e55a9130bc`  
		Last Modified: Mon, 21 Sep 2026 23:08:05 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:38c096bde12b87e83eb467d03b3e18de0c350f4456671dce4bd7a5ad48e1fa3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.0 MB (325998056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6db9d52b6fc2911082e7faa56e717367213a3ce00df45832cccc0669964df79`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:45 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:57 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:57 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:57 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:57 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:57 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecf39ae07dc4c327d520f5347880a76bfc8a11f079596edfc3dd99277e17aaf`  
		Last Modified: Mon, 21 Sep 2026 23:08:23 GMT  
		Size: 38.7 MB (38691222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e0064c638f7411df7d557d3a74fbb7e1881c449d132e2a240930618cdde36e`  
		Last Modified: Mon, 21 Sep 2026 23:08:27 GMT  
		Size: 240.8 MB (240819962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:a7375e5e2e253dd1a3c68ef0ead04445159a0281cb4306c7e7fdb5b90bd0ea9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc54f6f39b3131123fd71f9194d0f51418250b6bd2eb28c463ce57ec6f4282a2`

```dockerfile
```

-	Layers:
	-	`sha256:47dfe1cd92e3bfb70db38a50debddfb93d8ef602cfe626b29c2b9112b590c092`  
		Last Modified: Mon, 21 Sep 2026 23:08:22 GMT  
		Size: 3.7 MB (3654262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b77251109fb23eea744503a3ec7b6554ad788d5c8b4b266d16d7977526362c9d`  
		Last Modified: Mon, 21 Sep 2026 23:08:21 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
