## `openjdk:27-rc-jdk-oracle`

```console
$ docker pull openjdk@sha256:0d4c3cf241cabf153073b9a9b7d6f6609233c63f44436c9673268192823a3125
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:23783aa91cdf5ded67f16d908e088be7d434a4a7f05ae6a6531322d7c5c6e621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308723963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8145b50cb8f90e2dc2da2c4d834e41a83cfb158f6336fb8c3301eba24ce9ca2b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:41:56 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:42:05 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 21 Aug 2026 17:42:05 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:42:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:42:05 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:42:05 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:42:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153501f51cfef1546c9abb8bafe98239b0d40b4660623b874ac61f6fd0e56f2`  
		Last Modified: Fri, 21 Aug 2026 17:42:26 GMT  
		Size: 36.9 MB (36854871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c633e99aa97d40e4300afa353ae053e14083655e285f08cca56701d105c24726`  
		Last Modified: Fri, 21 Aug 2026 17:42:30 GMT  
		Size: 227.0 MB (227021360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:43fa3f55769c287876d875cf8a99189b83e66b59632fb42c3b02c076fe194a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870d3e0aecd16ede489dadca8474b12ea7e3d9b782caf7fca30b29c324821e91`

```dockerfile
```

-	Layers:
	-	`sha256:86b9db16444f4c3fb8bc9c1fe680bedd85ca283aec9f7d060fd39c89dc1890ad`  
		Last Modified: Fri, 21 Aug 2026 17:42:25 GMT  
		Size: 2.4 MB (2371456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757e587ac3ee7ce0c81f8affbccfb14a681d68d4baa11bcea2b2762ca8ad321b`  
		Last Modified: Fri, 21 Aug 2026 17:42:24 GMT  
		Size: 16.0 KB (15986 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f07da5f8aba2c49a82a9d13ee3abb7ba021b38ba2bf4f4d2ec8f27c302843f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305220326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ea453354648897e5bbf414d239995ca028b08d84d557d31e2e3d23b906b0c0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:43:09 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:43:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 21 Aug 2026 17:43:19 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:43:19 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:43:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:43:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ba577022e30c3fd7e95db1297123a4041a537153048956c455f89e1a8596ec`  
		Last Modified: Fri, 21 Aug 2026 17:43:43 GMT  
		Size: 36.9 MB (36917405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e0084360ff634d5682f3cf934f136b47849604e1abc77e81e1b157b8d12fff`  
		Last Modified: Fri, 21 Aug 2026 17:43:46 GMT  
		Size: 225.0 MB (224999255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:31d1001f78858c080912995b0fc5fe89fec05d8b17587a125c22588c5ca0b857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c10e1309e5abb71c7a3e86ff59472db731c01ecfe46f888b9e0a8db33fee0`

```dockerfile
```

-	Layers:
	-	`sha256:347d291be4b9ac93b68be8cc7372b0f8ba0fbd4af66f9fd2e77b81bcd7718bcb`  
		Last Modified: Fri, 21 Aug 2026 17:43:41 GMT  
		Size: 2.4 MB (2370912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe2dee94c5d2eeebacfd365d971bc1eb0720d1395a46350d0f30fa792a931c4`  
		Last Modified: Fri, 21 Aug 2026 17:43:41 GMT  
		Size: 16.1 KB (16128 bytes)  
		MIME: application/vnd.in-toto+json
