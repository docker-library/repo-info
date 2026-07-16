## `openjdk:27-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:73ce42e09023f38076ba8d8dec625d51f5221423fbfe024b1a335bf9c1bd1d6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:6c99c1ef4c0cfcbc728ddc836219b764eac4185fc894a2b59761bf3df71b5f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313203213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b963c1857d46b7fee92bc5300e1e3709a12d81a82eb278aba122714acf2a27`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:11:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 16 Jul 2026 21:11:37 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 21:11:37 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 21:11:37 GMT
ENV JAVA_VERSION=27-ea+30
# Thu, 16 Jul 2026 21:11:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 16 Jul 2026 21:11:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04075b6ed941dc7185996525592979596ddf58e89c872ba3b969446bd177312`  
		Last Modified: Thu, 16 Jul 2026 21:11:59 GMT  
		Size: 38.3 MB (38296231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a75e5a37410fa3a052ecafac98f66bf2de431dcf1eee58e6ef80aac064fe54c`  
		Last Modified: Thu, 16 Jul 2026 21:12:03 GMT  
		Size: 227.0 MB (226978594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:52c34e033f105cee727564e60751e3ebe973b9f7ec02984c925a2176f0439ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03081ec422eed1c5c984b54d9e38e739032ecd18cfa3c1350e5b5991c9b46215`

```dockerfile
```

-	Layers:
	-	`sha256:0c366a8d61d56aa854008f0d79f0e648350f72b7085168027cb9ee0704e2e86c`  
		Last Modified: Thu, 16 Jul 2026 21:11:57 GMT  
		Size: 3.7 MB (3652205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26349c484758c0a8b764f4d8db332a4704c8432775a9e12e8d1efd55294ebd7c`  
		Last Modified: Thu, 16 Jul 2026 21:11:57 GMT  
		Size: 15.3 KB (15343 bytes)  
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
