## `openjdk:21-ea-6-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:a426ae0acb03789240dc30b4a2d2048f286228b63c478ade5fe6ba0a31212664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:21-ea-6-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:b819b02df542acf150fb19146ce72bb6db7f61a52d00b4ab6ffc2d7c95daa90b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263157640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20dcad6e1f4ca7c375acd40e123c9b92ccf4ba76d4221f4c762fb4b39ca36489`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:27:36 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False 		gzip 		tar 				binutils 		freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 14 Dec 2022 00:33:09 GMT
ENV JAVA_HOME=/usr/java/openjdk-21
# Wed, 14 Dec 2022 00:33:09 GMT
ENV PATH=/usr/java/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2022 00:33:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2023 22:20:17 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:20:30 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:20:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13169d9a90276a4f8190fd6edcdf29f7dd28e38d5919cd950939ffe59628af48`  
		Last Modified: Wed, 07 Dec 2022 02:31:28 GMT  
		Size: 14.2 MB (14217950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d870643e3024869b0a2f1ca16d9d2245579aac468339cd652d472f67bb28f01`  
		Last Modified: Fri, 20 Jan 2023 22:27:13 GMT  
		Size: 199.1 MB (199121208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:21-ea-6-jdk-oraclelinux7` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e369a2dbbe5b3b712241bc6ea692acab688e13eede534c496d680595941b9719
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263250103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e054f5bed5814384b0b9ed95ee4ea78cc7f5155ef5c6c60ce08a03872dda44b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Dec 2022 02:11:05 GMT
ADD file:811a8ff51774a6c04c874e49a9bf2f3ef1a447402946740d2128a81809dc1a22 in / 
# Wed, 07 Dec 2022 02:11:06 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:53:45 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False 		gzip 		tar 				binutils 		freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 14 Dec 2022 00:53:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-21
# Wed, 14 Dec 2022 00:53:44 GMT
ENV PATH=/usr/java/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2022 00:53:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2023 21:40:10 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 21:40:22 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:40:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:81ac616e14aefb691216238b73174a9efd12a5e52bc4e297c5c1cf38561e5aca`  
		Last Modified: Wed, 07 Dec 2022 02:12:40 GMT  
		Size: 50.4 MB (50386463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804baa16591d133fbd09bac6a9223716dbf71fec46b68197f09b7ad836238810`  
		Last Modified: Wed, 07 Dec 2022 02:57:50 GMT  
		Size: 15.3 MB (15268238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96950e25c79b237541a9852e570412b3cf8e93fb20604c693d87e38511ce10ac`  
		Last Modified: Fri, 20 Jan 2023 21:47:15 GMT  
		Size: 197.6 MB (197595402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
