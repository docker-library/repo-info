## `openjdk:28-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:a03a8c4d495a32dee33d244de62bafa980d73f143225ddee309f68aff1118067
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:e89c89187bd4b9456f957233cd0233a1eb79255c55f2871003c40573dd0a2387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309227185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c28adcdb47d618511bf049614f5b6b265b7798249f9ae09880cd2928103ad51`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:26 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:11:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 30 Jul 2026 01:11:21 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:11:21 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:11:21 GMT
ENV JAVA_VERSION=28-ea+8
# Thu, 30 Jul 2026 01:11:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:11:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3f278b963a3ceef3b1dd88590bfaac21f6e7e202ac7e4e978f44a83f442bab`  
		Last Modified: Thu, 30 Jul 2026 01:11:01 GMT  
		Size: 36.9 MB (36857610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b541950000022639a3948e0399987172afa5e7ca72c14d19c61ad30c17103af`  
		Last Modified: Thu, 30 Jul 2026 01:11:46 GMT  
		Size: 227.5 MB (227527854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f3d60219edaf6c8fada465707d7f055003b819befe161766be53f7b8d4e4043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b810043a5d897c9e47d0f1df6b2a7abf4de23e9a0a313f860237342c1afb36`

```dockerfile
```

-	Layers:
	-	`sha256:c3efd97b9b408c3082e919aa203bd9a0f0fd95f1412f78b9e1cfd4c00ec8765a`  
		Last Modified: Thu, 30 Jul 2026 01:11:41 GMT  
		Size: 2.4 MB (2373357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55f7f0843f5be7b424e2892ee96d571769a95fae8101312ab4abd77f982d670`  
		Last Modified: Thu, 30 Jul 2026 01:11:41 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:10ccdf9576fc59e29b91cb307946beaf39e13d1a2babc74036b899f9611492c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.8 MB (305807286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2393b7f953997f2936d749f7024e50a1beb5ba4858c9c22144e2d26f99dddb08`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:11:03 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 30 Jul 2026 01:11:03 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:11:03 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:11:03 GMT
ENV JAVA_VERSION=28-ea+8
# Thu, 30 Jul 2026 01:11:03 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:11:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c9ba381220648f8899cf64eba7358f475ffa79e0249b9f56b19eae00a99439`  
		Last Modified: Thu, 30 Jul 2026 01:10:41 GMT  
		Size: 36.9 MB (36913796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d28250fae27bc74cb99b579ac25f184747bc399650ab0ae83c18ad6062a6d54`  
		Last Modified: Thu, 30 Jul 2026 01:11:28 GMT  
		Size: 225.6 MB (225590537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:fd2929755e92c77e98d733f11a35f0b4e27c2717d98213b323ee71214f7403c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3197c3565d8d4e398531fd43c1a67620084aa05e8a49aedbf56cbe3ed270a76e`

```dockerfile
```

-	Layers:
	-	`sha256:ef707f1facf25738810a19c3db5318470f2998871ef1de9573184580fd7d5f23`  
		Last Modified: Thu, 30 Jul 2026 01:11:24 GMT  
		Size: 2.4 MB (2372885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb41de8f9b0a9b168ef485f5a83fc1b80e45fb86af049796396efb2dec4ee277`  
		Last Modified: Thu, 30 Jul 2026 01:11:23 GMT  
		Size: 18.0 KB (18043 bytes)  
		MIME: application/vnd.in-toto+json
