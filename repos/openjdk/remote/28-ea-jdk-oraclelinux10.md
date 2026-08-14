## `openjdk:28-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:b6dcf4f42198bbca10708c8000039b7ebe9218ffebe556624c3111e6ae46017d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:c51544689d49d30a9ab6cf9fee782231e5541534f2092f0d50b61c3adc8ca1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324216309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac04272ff94bdf2bfecf6309520f710be58c433a0c4b062a9cf7238c24069fe`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 18:17:15 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 18:17:15 GMT
CMD ["/bin/bash"]
# Fri, 14 Aug 2026 17:57:41 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 14 Aug 2026 17:57:55 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 14 Aug 2026 17:57:55 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:57:55 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:57:55 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:57:55 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:57:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8869116c72eb0208bf65c15fb660ea2461928387f7c3b91735d8027eb2dd78af`  
		Last Modified: Tue, 11 Aug 2026 18:17:25 GMT  
		Size: 44.8 MB (44842311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb93df1dad9f0bdb51b8b7348f33066796997e001b6c7431198820de4a4a5ae`  
		Last Modified: Fri, 14 Aug 2026 17:58:20 GMT  
		Size: 36.9 MB (36855444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e7efa1847bf495e752de553a4a684ee58fdfeaa8e0541c65092e45facb7ba9`  
		Last Modified: Fri, 14 Aug 2026 17:58:24 GMT  
		Size: 242.5 MB (242518554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:43d1c2a1f7aaf505f028dd7619427a581e6bfda5fb35c0aaa62545ae83e8dce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5574ea86662472134bbf168fdb6d9f9f1a7c6a33bfce973d399d18cc4730f41`

```dockerfile
```

-	Layers:
	-	`sha256:164427f38d137accb547fb0ed3ab7a77be0786e9a3d4c86918a25caa824bf6a7`  
		Last Modified: Fri, 14 Aug 2026 17:58:19 GMT  
		Size: 2.4 MB (2375954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72bd1e048c1adb68b3889f11517f555b25211ecdd602b6606f0cc2b7387cc5c5`  
		Last Modified: Fri, 14 Aug 2026 17:58:19 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2f1b2308274b5c012d663aed9d2c36f5f9d09777f274454d4d74182cc8e16214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320812618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bae5cceeda71f963cf0d60b80c8cfdf3cf68586799a3fe0b8ac83d33ab82bbb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 19:03:33 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 19:03:33 GMT
CMD ["/bin/bash"]
# Fri, 14 Aug 2026 17:57:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 14 Aug 2026 17:57:47 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 14 Aug 2026 17:57:47 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:57:47 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:57:47 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:57:47 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:57:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75e2e264185d605b1e57b358d6b88ce16ac44eb08d2511cce63afbde52c76548`  
		Last Modified: Tue, 11 Aug 2026 19:03:43 GMT  
		Size: 43.3 MB (43301375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc0f4f04d614bafa35e1e233c3dd472fff4476a59d0c9e15fb26b61c36a0e14`  
		Last Modified: Fri, 14 Aug 2026 17:58:12 GMT  
		Size: 36.9 MB (36908007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26cef1e3a58699a0a4809ec5ee5596c2e8c8459e5c69614b154d5393df64746c`  
		Last Modified: Fri, 14 Aug 2026 17:58:16 GMT  
		Size: 240.6 MB (240603236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:5ad95c707c8c4b45fb2b063ed08ccc3d13e1368dd3eed24073a2426ec06f50e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d2b0533ad0a8732ef5b45a189af8e8d326191e0cd592432942496c9796bf1d`

```dockerfile
```

-	Layers:
	-	`sha256:072733b440f6e15a7ea31ea80af5eedd79bd192cac5e8ac0dfb7041b90b01220`  
		Last Modified: Fri, 14 Aug 2026 17:58:10 GMT  
		Size: 2.4 MB (2375482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d02f487a41ac65d90d6daa3230ccbd8d8d4fb395233f77cb894fe83b492b05`  
		Last Modified: Fri, 14 Aug 2026 17:58:10 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
