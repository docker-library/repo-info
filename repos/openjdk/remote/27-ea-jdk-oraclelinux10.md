## `openjdk:27-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:2322018a6d948bdafe72b59ec34431e3bd20c4168033dfb7d4377b7cdc85530c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:fb63ddb91e055718b744f3fc5f0902b1035f9c9a8d00fcb7a46089e49e136061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308722291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413fefa6c107d591ff35d8870853f798b4ac1fe43a3e126d6c78663e0c455bff`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:11:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:11:38 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 17 Aug 2026 22:11:38 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:11:38 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:11:38 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 17 Aug 2026 22:11:38 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:11:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c420a3ce8ed1b59f81e4cd700a694baefd8bf21f9d42d75c1d3f611ee9d4242f`  
		Last Modified: Mon, 17 Aug 2026 22:12:00 GMT  
		Size: 36.9 MB (36855061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e5a41770c2a9b37991de7491c950a243d99df53056cde9204e1b4b3672bb2e`  
		Last Modified: Mon, 17 Aug 2026 22:12:04 GMT  
		Size: 227.0 MB (227019498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:3a50e7f8462c4e7e297b9cd8af8a6e6814e253c134c06aa0eeec0aca19473e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cc269c178c3ec80d19df5ed7753f0f2b4bce1d9e572521b2ff205f8a423930`

```dockerfile
```

-	Layers:
	-	`sha256:7e551648b1ba47f19b7b0a37dbffb3c4bb5c9b78a83635438703c4759aa0db2a`  
		Last Modified: Mon, 17 Aug 2026 22:11:59 GMT  
		Size: 2.4 MB (2373400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30dd650aed5013bb79850264484f3553e3fa78c7fdf258cd9d6f9bb83c351316`  
		Last Modified: Mon, 17 Aug 2026 22:11:59 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:73b8d6c8e49f3d45cbc61038c151d3c9524e88a0fa2a55634584e03df1adc73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305218703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446ed3df84f1c60f144fc5942479b65610cfa87f7b1e8f1e87240d1ecf32d527`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:09:46 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:09:55 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 17 Aug 2026 22:09:55 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:09:55 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 17 Aug 2026 22:09:55 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:09:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fdd1f622cfc603f3e15a9db5b16d6a6d8f9a860c9002619ebd084c4705b29a`  
		Last Modified: Mon, 17 Aug 2026 22:10:18 GMT  
		Size: 36.9 MB (36917437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d0c05d815dee11fd33ee69333b2d85310bb09fa580fe551c2d648474828a51`  
		Last Modified: Mon, 17 Aug 2026 22:10:21 GMT  
		Size: 225.0 MB (224997600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f6d199e4a0a898a366366a4bb903f35bd0dc8616196a0eeefc012a9faac88182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51609212be8f388bd241003f04cd7eec03be7ec586f7c7fb7da547591ae2c35c`

```dockerfile
```

-	Layers:
	-	`sha256:325c391b07b094dc08f4c80de678c457fa797f7450b60a9c82a50d32e462773c`  
		Last Modified: Mon, 17 Aug 2026 22:10:16 GMT  
		Size: 2.4 MB (2372928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b54cbd776e5e148e742f6dcb26206dba4a964bcfd4b2356ffeb29c00ebc067b1`  
		Last Modified: Mon, 17 Aug 2026 22:10:16 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
