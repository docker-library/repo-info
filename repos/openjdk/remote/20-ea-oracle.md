## `openjdk:20-ea-oracle`

```console
$ docker pull openjdk@sha256:801d8e4ddc02b200fb693604c6242bcb1a97f867620b7d03e1ed1432b34927ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:20-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:8c673f376dee9ad2f11b7d03954d78fb4d4c1d95908d618ba749909ae6e0b6ad
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254256081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dd3b72eba6e86d6b9ad980611c8c6c1b63fbe0c9672bd8c7152e796c9b1b85`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:30 GMT
ADD file:599abbad96e264361b1bc5a7643f88354e406a2a1f55256af8a67e5a71ac3044 in / 
# Tue, 17 Jan 2023 21:49:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:26:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:27:24 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 18 Jan 2023 04:27:24 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:27:24 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:21:43 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:21:57 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:21:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2c57acc5afca507dabd7a22ed8ab1a978dad73d90dacad7b0b4668750f8fca64`  
		Last Modified: Tue, 17 Jan 2023 21:50:21 GMT  
		Size: 43.9 MB (43885845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8fb8780af51fbf2479bc74be4aef9eef6a67db84a17a1eadc0d9bb6464a16c`  
		Last Modified: Wed, 18 Jan 2023 04:31:02 GMT  
		Size: 12.3 MB (12251739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97a46f36b2a1e7b3223f53e8ab3bd136968a06b08a1535ef26dd0d66e289798`  
		Last Modified: Fri, 20 Jan 2023 22:30:08 GMT  
		Size: 198.1 MB (198118497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:82beef7d84c890bd11ad1751b5c3928ad98b5bf92ebf0ba68c4b235e6ea3ebab
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252468089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f88d15b1439c28fc5779655445fd7d568b0c88f47de838c3414f4211161c8d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 22:11:15 GMT
ADD file:dc09c8b8bd2fd3e0439792a21b95984ec8104b2a384f5ea2ef173918c105da9c in / 
# Tue, 17 Jan 2023 22:11:15 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:00:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:01:04 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 18 Jan 2023 04:01:04 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:01:05 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:41:35 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 21:41:48 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:41:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:002eb071499b5ede36f617906154b8933e643acc41d2993585876528939fb80f`  
		Last Modified: Tue, 17 Jan 2023 22:11:59 GMT  
		Size: 42.8 MB (42775871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceecd3085b25f549de68213105de48a98b0db45a66e38d315c34ae860197f1a`  
		Last Modified: Wed, 18 Jan 2023 04:04:31 GMT  
		Size: 13.1 MB (13068620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5763b3fc756e1c70750999d40dc956e50957100580072d482b6c79808aed8c`  
		Last Modified: Fri, 20 Jan 2023 21:49:59 GMT  
		Size: 196.6 MB (196623598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
