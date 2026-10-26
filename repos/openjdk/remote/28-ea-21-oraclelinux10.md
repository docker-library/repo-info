## `openjdk:28-ea-21-oraclelinux10`

```console
$ docker pull openjdk@sha256:60299e6f7447ff4680ee4f02363a65c5b3b9448f57ef181328f1903bf173e961
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:df3df27321e87fe72bcdbf9ac249ad68cad2de2e2a9ae61ec3b7d299cec1de08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324994392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3821b42d0f8635e62d8d1a44d342494c705a9baa11ed553f739793cec571f0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:20 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 17:17:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 26 Oct 2026 17:17:48 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 26 Oct 2026 17:17:48 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:17:48 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:17:48 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:17:48 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:17:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:06eb674b75f6977f06bebb62bdcbb4958a74e27d7ea78f4b4a0d4a529751239a`  
		Last Modified: Mon, 19 Oct 2026 21:32:32 GMT  
		Size: 44.9 MB (44919395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85a4a7c99da0ad81d768d3c3cbd6c5a3930c1a19e29a29cbb1068a274a470b1`  
		Last Modified: Mon, 26 Oct 2026 17:18:13 GMT  
		Size: 36.9 MB (36898881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e418bf36c9d797bc09d7046985a03b45e7fb8d99e1a35d6b84e0b11cce6fd05d`  
		Last Modified: Mon, 26 Oct 2026 17:18:16 GMT  
		Size: 243.2 MB (243176116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:087ca3dda22702400566e57579944208bcaecdf3cc49d8a58ed72f9655b3c1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14769c4e1218294b4b1844d6e88f3f715285139c2835b371ce1ff12cb6da2070`

```dockerfile
```

-	Layers:
	-	`sha256:ba3ef2836e7a10c95bf8239f4fff9f9ec977c1c6e522cfb8102e4215872f164d`  
		Last Modified: Mon, 26 Oct 2026 17:18:11 GMT  
		Size: 2.4 MB (2376713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226f6f1e425ff9eedd8680c8b032f806bcc91cb3eddcf0e09ad80ae7f0c78ec`  
		Last Modified: Mon, 26 Oct 2026 17:18:11 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:23c37c1a56b80d9fd9da39e824e8d6c93ca35e1135c7a3185cbc1906a99bf225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321502959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b2a31c8feebbc25f1d2a2289cfcc6640c90d8830cea0e9b9f1dcb6d6eaaf86`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:14 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:14 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 17:17:24 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 26 Oct 2026 17:17:36 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 26 Oct 2026 17:17:36 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:17:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:17:36 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:17:36 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:17:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0a8f8fa3fd533594ebbeda129c45aa129ac3ff81d4e7b1af5cec3bc2b5ce2d15`  
		Last Modified: Mon, 19 Oct 2026 21:32:25 GMT  
		Size: 43.4 MB (43359583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954c944bf4c927bae18cd890e9ac0433e091f832d05cf5532ecaa5a2cf5c75b3`  
		Last Modified: Mon, 26 Oct 2026 17:18:02 GMT  
		Size: 37.0 MB (36959516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e02cc2b49ab5e75ddf91c955278a180a9bee214d89cfe8f51942968a3f94dc1`  
		Last Modified: Mon, 26 Oct 2026 17:18:05 GMT  
		Size: 241.2 MB (241183860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:4150b528ac1aeb6f5022f804c3ef46532c8f2ffd6184071291f5beafac44e6e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c973ea065d57e50a6c0c40fa982d8d0f1d1e33c4dd2703e12dc43a75ea676fb`

```dockerfile
```

-	Layers:
	-	`sha256:0ee84925fb2deb7ceeb09efbf25276913555c919d9e5a8a5232562f23fe2514f`  
		Last Modified: Mon, 26 Oct 2026 17:18:01 GMT  
		Size: 2.4 MB (2376241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8d0dc3007734bbfe96a39de98827278d8d3e46affec669632408ae9c52ae09`  
		Last Modified: Mon, 26 Oct 2026 17:18:00 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
