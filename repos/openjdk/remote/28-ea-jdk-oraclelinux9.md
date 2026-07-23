## `openjdk:28-ea-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:6334dca4a12747cdd1eb4e2231d5294a54c990e38ae8bf97c717d013c2056ddc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:b0a4b00fe1742fc5c9ab967b456ca69a795f5a08ff37e1c3dae17864f4798477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313686328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83876c793830ffa1217a2838509232773df0729481aa2c625733631a16e00ec1`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:12:03 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:12:59 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 23 Jul 2026 01:12:59 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 01:12:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 01:12:59 GMT
ENV JAVA_VERSION=28-ea+7
# Thu, 23 Jul 2026 01:12:59 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 01:12:59 GMT
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
	-	`sha256:501ae96e3a870843181e4d300641f66fec2c03e57106ffd0235404edce6bc16c`  
		Last Modified: Thu, 23 Jul 2026 01:13:23 GMT  
		Size: 227.5 MB (227475134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:76405441ae17e0f6a8bd0bf4c9805350c7b26d47aead68f882071f43bb25e49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409a0ae3cd28813abba225193dbbeb972441b34d190b6e0641db5e7fd53298b0`

```dockerfile
```

-	Layers:
	-	`sha256:915977dc6c242e05dd2a0c530b6e7dc1040207c28d3dc482ab590b436ee042f6`  
		Last Modified: Thu, 23 Jul 2026 01:13:19 GMT  
		Size: 3.7 MB (3652829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e88ba47d5f78c5262320d961da570c221fc44b30df368fbd9be266f676ffeab1`  
		Last Modified: Thu, 23 Jul 2026 01:13:19 GMT  
		Size: 15.3 KB (15325 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7e898d595a4ab4df4637a60b7471b24545681e7932721bbfff1b1fcc11f56966
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.7 MB (310680012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a11444a473d520d9eb6e4bb5de3d920bbacaae00d6b2b72a704af2e99a5433`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:45 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:12:40 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 23 Jul 2026 01:12:40 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 01:12:40 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 01:12:40 GMT
ENV JAVA_VERSION=28-ea+7
# Thu, 23 Jul 2026 01:12:40 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 01:12:40 GMT
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
	-	`sha256:28b9f731550d41aa013a1f49ed90f48e0c357314049be55becfce0b7697bfee3`  
		Last Modified: Thu, 23 Jul 2026 01:13:06 GMT  
		Size: 225.5 MB (225522287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:1a354fd338e2c11337f96c69e514c17211682d34f21b2741a45c4ce63f5a3302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b0fcd90d383d6ca3b021ef871e6e9c8227eff0f4dfb85f014ddf0472dce10b`

```dockerfile
```

-	Layers:
	-	`sha256:db880986072ec7227d52807249314a9a8fafb6778c556d7cbedb5817cefd8dc1`  
		Last Modified: Thu, 23 Jul 2026 01:13:02 GMT  
		Size: 3.7 MB (3650439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af03bfd94478225fe889c3de3aa0238409da5a4c4355aa61d2c157f6c1e10874`  
		Last Modified: Thu, 23 Jul 2026 01:13:01 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
