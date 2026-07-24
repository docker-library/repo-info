## `openjdk:28-ea-7-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:237c9b82ae7e2d4752c1141a82be4c56d207c8eb59fc413ee4ed368b11e759f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-7-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:9c006f1cdf5d9bba2bd9ae3517194e792dd4607fa2a3d2cb4dd086fbbc835276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313685757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdfe68388c24748cf5733beacb8a6f6cca13a30392d7e162654add48e52a47d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:06:44 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:07:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 23 Jul 2026 23:07:46 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 23:07:46 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:07:46 GMT
ENV JAVA_VERSION=28-ea+7
# Thu, 23 Jul 2026 23:07:46 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 23:07:46 GMT
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
	-	`sha256:6d351aa014224f4b9240f64ee7ac8faeff8a0778d2df959727a760bf84811428`  
		Last Modified: Thu, 23 Jul 2026 23:08:10 GMT  
		Size: 227.5 MB (227475160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:e6bb10a7639b34668f2568be31e1383261a59e5d2bf60677e8a4a2bd0bf380b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a09d90eea2f5a6230636694f5135f822b606a46216d21d7070155a9aa2dbf5d`

```dockerfile
```

-	Layers:
	-	`sha256:041e1af97f460c099aa556015cf3ff46f3c10f5970f8c7003b3269d5d653217e`  
		Last Modified: Thu, 23 Jul 2026 23:08:05 GMT  
		Size: 3.7 MB (3652829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62266c4fd54c7a1af0179409be92a2078936af120961a5a38091e3b738bd0b20`  
		Last Modified: Thu, 23 Jul 2026 23:08:05 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-7-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6c6ece161139b83513a9d81cf3168f0bdeab8253f8e41814febd825770340ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.7 MB (310685944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb53cef99a2bd7e6079b4d9c50f477495e47c3f7c32f969ff82fac593575e2a0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:07:50 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:09:26 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 23 Jul 2026 23:09:26 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 23:09:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:09:26 GMT
ENV JAVA_VERSION=28-ea+7
# Thu, 23 Jul 2026 23:09:26 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 23 Jul 2026 23:09:26 GMT
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
	-	`sha256:64744e2e805bfaeab28341431e8312f81d66933571707c82ca2b8f2295243b61`  
		Last Modified: Thu, 23 Jul 2026 23:09:51 GMT  
		Size: 225.5 MB (225522297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:38454d6bfcd3a6735aec835c81ebf7decebb715f4e80f8cb9c629b3128c8ad1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cd51c1a7e882a96e1776c177f6f0d9eb1ac201f42fb8a80ed9e4f7e3c3b78a`

```dockerfile
```

-	Layers:
	-	`sha256:ad80b9ca7ce4893f5b2096738491f8af3c8be8802c152db28666aafee2ddc807`  
		Last Modified: Thu, 23 Jul 2026 23:09:46 GMT  
		Size: 3.7 MB (3650439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac4acf1db12239ed58eec9d3062a4174e1602f76b6fe8a965826c54a20071608`  
		Last Modified: Thu, 23 Jul 2026 23:09:47 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
