## `openjdk:27-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:9f4b40b0f03d2c42d225218df1ab930b16c16ad6223c0eba846a9e2f5e14214d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:c28e10ec70f1704e10371740280f452d23eef111df41ad735e828cd9fe199335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313207581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2b04285d5dc3eb9330f06a1eaf77f4423450d690d79f2538e26ddc5ae456ed`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:11:25 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 09 Jul 2026 19:11:35 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 19:11:35 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 19:11:35 GMT
ENV JAVA_VERSION=27-ea+29
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095eda290619359bbf6ded6d617b6bb78b5e902fe38fd4665347ad3a6c294ce`  
		Last Modified: Thu, 09 Jul 2026 19:11:57 GMT  
		Size: 38.3 MB (38294131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8adbd07a9033db5e283f400832d93821e3da5e65c4bca4739141df3bdddc7e`  
		Last Modified: Thu, 09 Jul 2026 19:12:01 GMT  
		Size: 227.0 MB (226984462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:c8dd6dfb7c7fa0b43f02f44dc0dc238367a992745709eeb5bda3320909338568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a52cce78b0f981279755f6470f63c03062dd07ae7ca35e6fc32aeab151a3abc`

```dockerfile
```

-	Layers:
	-	`sha256:802fc324f04e0502ea84a1e16d974f608505bfa8a153636e1272503975763f5f`  
		Last Modified: Thu, 09 Jul 2026 19:11:55 GMT  
		Size: 3.7 MB (3652205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3db76a8103474b8d95440e775180f7cd4e6a508a7015be27d7c52f4e5e29f49`  
		Last Modified: Thu, 09 Jul 2026 19:11:55 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6ce4aae16ffcfec425602bc7e7d9733592cdfac0e0a65a7eb3e15a6b9fc0a7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310129024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ecd364e3adf72b2deed48a2f665d56953937aed63aaf3a3601fd32b4e0457a2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:11:14 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:31 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 09 Jul 2026 19:11:31 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 19:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 19:11:31 GMT
ENV JAVA_VERSION=27-ea+29
# Thu, 09 Jul 2026 19:11:31 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 09 Jul 2026 19:11:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68001c8604ed809f9c06ab473cf9d1b7f460955869590e324d5bc27fba2de537`  
		Last Modified: Thu, 09 Jul 2026 19:11:54 GMT  
		Size: 38.7 MB (38692640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b334b12baaf4fca3b5f05c67b2bd67454f29e90f0f8f5bff616668b0a65d3`  
		Last Modified: Thu, 09 Jul 2026 19:11:58 GMT  
		Size: 225.0 MB (224960398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:d7d1c049259aa03429250be2987b1222b9df6f810aa1696f8398d294b004fa95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d232aeb32f7bfdf85a4d6471887df92352daed5b6d831b52856ad967d1eb345d`

```dockerfile
```

-	Layers:
	-	`sha256:cecebeb7c7b73103fc175e320947aed5d0cbe6e8be99856530625c8443020fbc`  
		Last Modified: Thu, 09 Jul 2026 19:11:53 GMT  
		Size: 3.6 MB (3649815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72b7627cb5c5ee05afe4f701ffff675044b262ff38bdadfa190203f372e24c4`  
		Last Modified: Thu, 09 Jul 2026 19:11:52 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
