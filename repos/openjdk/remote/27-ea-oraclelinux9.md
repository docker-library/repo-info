## `openjdk:27-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:b654c93aca6048a1c56d39bf4264cc5f7921b6f4b30720d7f4c64781550d4639
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:e0145e9b75451911d73323f550f31248611e66e3c4ca3a1ce437d70a3966ffed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313197615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1d39618a581ef4a9e3070cf68fea41c333fe10c0f87f5dd2da8eed53105e89`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:06:44 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:06:54 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 23 Jul 2026 23:06:54 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 23:06:54 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:06:54 GMT
ENV JAVA_VERSION=27-ea+31
# Thu, 23 Jul 2026 23:06:54 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 23:06:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b53f6fad3771e6603313ea1beb599454dec0d8aec20843658f3bdcf264c848`  
		Last Modified: Thu, 23 Jul 2026 23:07:17 GMT  
		Size: 38.3 MB (38282845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b212da115bb3bc15a39da22ba2ab50ae492cd1bf0388f1756336d5d0d1493c37`  
		Last Modified: Thu, 23 Jul 2026 23:07:20 GMT  
		Size: 227.0 MB (226987018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:fde7933e8225c201d58cc277435bc388079ebedb39b78f76ce95a091614b09e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619d1cb43cff7784ed03c2add908197a0f8b89fbf67710f1e9153f432cf01a17`

```dockerfile
```

-	Layers:
	-	`sha256:7c2a31652bd114174b0e146e1dca9c9ee54cf14016e2bbf8d71e90d95c093842`  
		Last Modified: Thu, 23 Jul 2026 23:07:15 GMT  
		Size: 3.7 MB (3652837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:037613c60b195641d5f29bb008f3a9a13ed1501d0c33284b85e70242d193f338`  
		Last Modified: Thu, 23 Jul 2026 23:07:15 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ade200e47c2fb08c36ecdde97cb1e55234c209c520b7514108debacf468af37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310150625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b270592bb818a1f15e28278592a3c86a50f9228c68405b093a30c0f09f8f51d3`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:07:50 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:08:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 23 Jul 2026 23:08:20 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 23:08:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:08:20 GMT
ENV JAVA_VERSION=27-ea+31
# Thu, 23 Jul 2026 23:08:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 23:08:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcabef8cbca97734883acade73a0031c93239fb31f916262d076e4556bf1142`  
		Last Modified: Thu, 23 Jul 2026 23:08:43 GMT  
		Size: 38.7 MB (38685742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf19d622ce0951792b4833cecef8fda370fa09f3c182082f8d101d506fa6747`  
		Last Modified: Thu, 23 Jul 2026 23:08:46 GMT  
		Size: 225.0 MB (224986978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:c8a31f67c2f415f077618248d450acf1cf0eccdb17e910b9b3cc39ca75f2927a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717f02d91ea35740a746c4e30f65201ae727525ce97f9864e4cf7c3774609eaa`

```dockerfile
```

-	Layers:
	-	`sha256:6c75777184d2dcbf25e5bb892ab5a4be5c68c914a08aa3c9b5b3ac6e399329c0`  
		Last Modified: Thu, 23 Jul 2026 23:08:41 GMT  
		Size: 3.7 MB (3650447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c389eafa9b92aa9f58928d80c2c7e2d32eb75a5afa2ff0eb7ba53088b2058f35`  
		Last Modified: Thu, 23 Jul 2026 23:08:41 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
