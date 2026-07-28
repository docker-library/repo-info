## `openjdk:27-ea-32-oraclelinux9`

```console
$ docker pull openjdk@sha256:73aef2ede85fe7895cb437cbcf59e39237717011443dc58082ea429dcc423408
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-32-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:4142d116696e61564f1fe4a9cce7c8e21fbe3eeb032e27be957fccc9ffe639b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313230904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf05935fbd679fcfbc89eb11ca77b47320abad2a3d0b8408f0eed2834dead4cd`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:21 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 27 Jul 2026 22:07:29 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:29 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:07:29 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:07:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:07:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2532c1587023dc96003b5496829bf185e0fecd6c2411dbe3d81195c750900834`  
		Last Modified: Mon, 27 Jul 2026 22:07:50 GMT  
		Size: 38.3 MB (38283109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d39d76dc2981e60edfaca61a12afbd2cf00901563691e3180e31a2b5cf1497`  
		Last Modified: Mon, 27 Jul 2026 22:07:54 GMT  
		Size: 227.0 MB (227020043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:1a47a38b248accf9f1523414a38907bc3d493993a9812476bfd2c790cea52d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fe763e4d41b70c82bc82beed2ec9c90020961cbf139b8e9c5e0f3ba139f0ad`

```dockerfile
```

-	Layers:
	-	`sha256:f0f2ca36b6e7f110bcf853caef0ab11d9f123ca0221232f395fc0909cfb0edac`  
		Last Modified: Mon, 27 Jul 2026 22:07:49 GMT  
		Size: 3.7 MB (3652837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4891d84e6c5cc20d32846905cf2c477467cba33732f14abff50b9797d0c2c66f`  
		Last Modified: Mon, 27 Jul 2026 22:07:48 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-32-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0a6ad39361d2075cfcb2445f4e5edacb08646ce4b6be403f9f36233efb5b0880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310160755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04e853487a13e748cc1519ff70b166793c37b592d00c65e1554709962787b46`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:07:27 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:07:27 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce31122704011a8de30265553a7bbd7c8a71c25203f54493e9aba31e0a6d80`  
		Last Modified: Mon, 27 Jul 2026 22:07:50 GMT  
		Size: 38.7 MB (38685681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749c4d76ffdd329a7cce5ba85e2cc45991d4602b5ea56f1674e3f489c58cb7ba`  
		Last Modified: Mon, 27 Jul 2026 22:07:54 GMT  
		Size: 225.0 MB (224997169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:783748d9657eb1d6dc57bb1bba157239cb4e72ba63ac950db23ca44af5c1ecd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed80befd2aac83062db9735fee2c0d210497d07a373482439609525c6287632`

```dockerfile
```

-	Layers:
	-	`sha256:d58ec4281ed52010b8efb88c180ac7298fe81b93775a1b74d98b4521361ba386`  
		Last Modified: Mon, 27 Jul 2026 22:07:48 GMT  
		Size: 3.7 MB (3650447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd3968342ac174797bc5cc2c303c1a86bbc5d1525df805b6a965e4475ef23585`  
		Last Modified: Mon, 27 Jul 2026 22:07:48 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
