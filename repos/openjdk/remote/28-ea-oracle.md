## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:ee3d13aa671d430525ece8663f15adcc9c7aa954f6923ddd70b27b745e3277db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:ab6b6f36bbe2417e44ca75c050f4ccbc6c93ac320ce0a123ef54698be71daf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324221421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12544fc829bd80e7327bf63a2fd32b2aa5b2f5147674b33cbe80e3fca6d0f094`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:11:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:11:40 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 17 Aug 2026 22:11:40 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:11:40 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:11:40 GMT
ENV JAVA_VERSION=28-ea+11
# Mon, 17 Aug 2026 22:11:40 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:11:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed863d27ec5595a1f6392e034fd43c437475edd475dd8022eab67b20f8591a14`  
		Last Modified: Mon, 17 Aug 2026 22:12:06 GMT  
		Size: 36.9 MB (36855075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0cb2da4c6272c1465efa9e8a779a9f8e9463e894128ab3b03081e1bab686ec`  
		Last Modified: Mon, 17 Aug 2026 22:12:10 GMT  
		Size: 242.5 MB (242518614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:4e2bf5b87f222b28c4d2aa59a024d49d43ce9689e10ab8f0e7462878b954b58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3acecd9c5404599be156c9db86bd06db529edeb553b222e4c04089b458ecaf`

```dockerfile
```

-	Layers:
	-	`sha256:d7fae146ea75071c5e058ae571833811a71b66cb2f736657c391bb907f9cf931`  
		Last Modified: Mon, 17 Aug 2026 22:12:04 GMT  
		Size: 2.4 MB (2375970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6764080c016c6655a27724bf328ce068ccadec9e7ef526f9b68d3ba66e34d6df`  
		Last Modified: Mon, 17 Aug 2026 22:12:04 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3f606eadc843fff6e4d37d5d9b72dcb45c92b1cd6463061a23625561d7c86c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320824500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851f99cbe843024ed76666a661107f4d07758172ff2139de6aec6349bae735a1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:09:46 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:10:39 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 17 Aug 2026 22:10:39 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:10:39 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:10:39 GMT
ENV JAVA_VERSION=28-ea+11
# Mon, 17 Aug 2026 22:10:39 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:10:39 GMT
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
	-	`sha256:f7aec70dcc6d0bb87f11f484d261089fb3be4078569b3bd1208cb5f4c8f819e1`  
		Last Modified: Mon, 17 Aug 2026 22:11:08 GMT  
		Size: 240.6 MB (240603397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:e05cb0bf1d796e17768e799875c3e60df2d14b8c865e4510fc1715eb1dc45c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47753c2fa44a8ab21ba1b49eb8a1bcbb096c797625f7220eed4c5d99e8fb7e25`

```dockerfile
```

-	Layers:
	-	`sha256:3b96d3f8b05b578cc227957a4583e712ec8fd04c560f4142b160b210307e2f25`  
		Last Modified: Mon, 17 Aug 2026 22:11:03 GMT  
		Size: 2.4 MB (2375498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f6832652f238cf7e4a73f8af340a505c1c2741c9247666f6ab6d7de6b3d1793`  
		Last Modified: Mon, 17 Aug 2026 22:11:03 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
