## `openjdk:20-ea-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:8494bcb4a33b4e2e99ca411d324b463f5fb8a12ef0c1cb508e7220bb31f9613a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:20-ea-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:ced62b50ad689f97fd7dccaabd1b1c59391c527066fb1fac97a194eea18d294c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262157080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ee534c2ec925deb0f2fca2638e149b9b7064a638b8d9f737822f56de8f3fa7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:27:36 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False 		gzip 		tar 				binutils 		freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 07 Dec 2022 02:27:36 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 07 Dec 2022 02:27:36 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Dec 2022 02:27:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2023 22:22:00 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:22:11 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:22:12 GMT
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
	-	`sha256:755db6d1e35d77d1abca9c34a9152d6d05ec31dec487789bb8efc2d879d400e6`  
		Last Modified: Fri, 20 Jan 2023 22:30:52 GMT  
		Size: 198.1 MB (198120648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-ea-jdk-oraclelinux7` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:40db7ce3547fd56969c4d68cbb8cfce64d1b779fd753b3fc1579981d79476a0e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262278904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bb310833e9b8186af8bb5739ee5c898179c9ebc9e6f992939ff9a81d0e7483`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Dec 2022 02:11:05 GMT
ADD file:811a8ff51774a6c04c874e49a9bf2f3ef1a447402946740d2128a81809dc1a22 in / 
# Wed, 07 Dec 2022 02:11:06 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:53:45 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False 		gzip 		tar 				binutils 		freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 07 Dec 2022 02:53:45 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 07 Dec 2022 02:53:45 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Dec 2022 02:53:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2023 21:41:54 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 21:42:05 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:42:07 GMT
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
	-	`sha256:84c67283e3f44df9aba67c894eb16da0a7482a135f2c238286c4a376de6be223`  
		Last Modified: Fri, 20 Jan 2023 21:50:41 GMT  
		Size: 196.6 MB (196624203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
