## `openjdk:21-jdk-oraclelinux8`

```console
$ docker pull openjdk@sha256:3368683c59aaf97fe1330af8c7fa11adac6a4b7f7168cb9d518e1c87c050203b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:21-jdk-oraclelinux8` - linux; amd64

```console
$ docker pull openjdk@sha256:92a186e134911e87475c1facc363f7e7f088f033c01397e4e01b842e84241e73
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255258261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5bc6a6ca662a82bc68369952fefd03cd75cd5227263037df7b71a6da6f442d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:30 GMT
ADD file:599abbad96e264361b1bc5a7643f88354e406a2a1f55256af8a67e5a71ac3044 in / 
# Tue, 17 Jan 2023 21:49:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:26:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:26:54 GMT
ENV JAVA_HOME=/usr/java/openjdk-21
# Wed, 18 Jan 2023 04:26:54 GMT
ENV PATH=/usr/java/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:26:54 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:19:57 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:20:12 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:20:13 GMT
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
	-	`sha256:2f063075074b5a5aafc2ad6a1bf9429fd824cb5fea86e0368f2a8b0264ae0774`  
		Last Modified: Fri, 20 Jan 2023 22:26:29 GMT  
		Size: 199.1 MB (199120677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:21-jdk-oraclelinux8` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8b97aa74faa5a9b03602e5affd698a7f6b674ea7f9ffb2afecc0ac11b9303a9c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253438140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c5cc25d65a593e0a67f231b9dd0ab15bdf5884839ee0bbe13bdb1cd9923697`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 22:11:15 GMT
ADD file:dc09c8b8bd2fd3e0439792a21b95984ec8104b2a384f5ea2ef173918c105da9c in / 
# Tue, 17 Jan 2023 22:11:15 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:00:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:00:40 GMT
ENV JAVA_HOME=/usr/java/openjdk-21
# Wed, 18 Jan 2023 04:00:40 GMT
ENV PATH=/usr/java/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:00:40 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:39:50 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 21:40:03 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:40:05 GMT
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
	-	`sha256:88466da28c2a5e1d1764a3da170cacd3d72eb98d1607badf054b3b3ba83c3f0a`  
		Last Modified: Fri, 20 Jan 2023 21:46:33 GMT  
		Size: 197.6 MB (197593649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
