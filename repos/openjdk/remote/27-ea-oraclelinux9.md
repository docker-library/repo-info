## `openjdk:27-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:7c4d09e94c59fb17118bbf1fc883cbdf1ec6733386e4588e3789c498fd40ae5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:9f7bde8270a26a6e739f605be18fe74f86a6b062a6b9766f8b34af32bb231346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313202076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcc78b3449ccb9eab83ce7bb4ab628f1d29c587a7045a0a60217bb09c19646d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:01 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:09 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:10:09 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:09 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:09 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:10:09 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a70a00a9c423da4a7fb7864fc0d72b3d55c4d60211fe565f2946e46cae1f9`  
		Last Modified: Fri, 10 Jul 2026 17:10:33 GMT  
		Size: 38.3 MB (38294511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e42783276c7ee8fbfb59fc545a5c76e8369ad60e2d41a7241b59c1c645888f3`  
		Last Modified: Fri, 10 Jul 2026 17:10:36 GMT  
		Size: 227.0 MB (226978577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:f63641ae819cc3d44d301d3fd014c60abaaccbd0bed65746dfa9d2fd0fdb3339
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7521297ea37829498cdc1adedb3a6348c2776c53cdce1e601473b20c8eb07c32`

```dockerfile
```

-	Layers:
	-	`sha256:2ef9db6b4ff32349cf9fe53ac44d577d8162cfd02742c58b55bfd8db30fbdf84`  
		Last Modified: Fri, 10 Jul 2026 17:10:31 GMT  
		Size: 3.7 MB (3652205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6c810bffc71ae24d2dfa6cd4d93cd7b326662e3a7ff8a2761d43f47cd4c5c5d`  
		Last Modified: Fri, 10 Jul 2026 17:10:30 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cf779b4b0920455985652b18b72082b71b59ab06fa9a9c30886f7a9d912f84d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310133528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80aced724d7864ddd21da284925cc5abad57af20738d1eee91f4108d2e53688`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:09:53 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:01 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:10:01 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:01 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:01 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:10:01 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d87ddbbd2969abf351b3a2786651b3a6259075fc3bd9d997af9cac9f8085b`  
		Last Modified: Fri, 10 Jul 2026 17:10:24 GMT  
		Size: 38.7 MB (38692691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85c8f04d1e741c407be1de1cd6f3da0e2f1cfd7a95943fe22c18150ffd061ff`  
		Last Modified: Fri, 10 Jul 2026 17:10:28 GMT  
		Size: 225.0 MB (224964851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:644de30c54f0d98e652cc35f417a9bb7f05327302b94546533d6b9d58ba27d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19ec2764f4b5641df920e3cba7beb37128a27f6b1d101774d3e619ac4cee999`

```dockerfile
```

-	Layers:
	-	`sha256:6c491e3892ec769e8768a3020673b4add258c0f716c89689fedba4fdb8bf7b0e`  
		Last Modified: Fri, 10 Jul 2026 17:10:23 GMT  
		Size: 3.6 MB (3649815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a291efd3510b80279c25b7825595d3d0d98e9b1eb6ec1b947425b64e92e43e14`  
		Last Modified: Fri, 10 Jul 2026 17:10:23 GMT  
		Size: 15.5 KB (15459 bytes)  
		MIME: application/vnd.in-toto+json
