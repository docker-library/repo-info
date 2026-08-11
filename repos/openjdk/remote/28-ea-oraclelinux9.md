## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:df54d8fad4890093e023ba7e6ef55fe7d9fb1b56d3d818d274b8548570e77497
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:f866d3ad9637e786ac9472581f9ae8b98bc4c70d48c31e6e100662165c653d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328708399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b132616e7b24e34bceb6ab12b84a2ff56ea90c1a336f98e593dd40c502aeea86`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:34:15 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:25 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:34:25 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:25 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:25 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:25 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13049cd4a067a20098bfdf8b3eeea272a0dcdb2c0c91bbeefb4d6b862f25b215`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 38.3 MB (38283105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ded8bac9f70a0a028702fc998897d9fcf0d7a2188a97e79942d3526e58ab52`  
		Last Modified: Mon, 10 Aug 2026 23:34:54 GMT  
		Size: 242.5 MB (242497542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:6854d94c6fcaacb0194007cfb815f2d014db5f81516ad26d7e7b45380442c17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3670750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96ec7e19fc62acd47f81076111004b55680a0ed9528da03755ee67f8078092e`

```dockerfile
```

-	Layers:
	-	`sha256:8101ad7adf8215ce69b8cdc502a1b247c6f65f30b5481b3c14c05db60a72e845`  
		Last Modified: Mon, 10 Aug 2026 23:34:48 GMT  
		Size: 3.7 MB (3655407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dcdc5f084cdfc3190ce8b9aff10b56a2a7cf48d20bf0ed9e675ec5138dab95a`  
		Last Modified: Mon, 10 Aug 2026 23:34:48 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:be440d9688900dc98b3455bf354f34c7432bddc61e7a7f677b6e7c47671b431f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325752747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d28aafb713ef7cee302d830851561fef66baa1f203220c71616312dd323c402`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:34:15 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:26 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:34:26 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:26 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:26 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:26 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be5df789997743a1cb9ecde195b70039b1e7a2755ff11697e2fcefb42827168`  
		Last Modified: Mon, 10 Aug 2026 23:34:51 GMT  
		Size: 38.7 MB (38685696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7aa0414974c24ab968d5c1d3a456a9c1e176a972eb60ab356625bcc73480cb`  
		Last Modified: Mon, 10 Aug 2026 23:34:55 GMT  
		Size: 240.6 MB (240589146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:30402e8b7b784dc8270f72fe9c469172be8eb6005ba152babb1e5a13dd61f678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b129909371dbca2834089f6ce594756bd06cac46a1bc7315e7c2d40281295900`

```dockerfile
```

-	Layers:
	-	`sha256:bdec31bcd91ded8343f9e1982aa03f84a2d719b0567407771e5840707d9c406f`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 3.7 MB (3653017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11acf3ba4b1ad5a0f0e01dae6097dd73022ab8a6f2605158551f0937352f21e2`  
		Last Modified: Mon, 10 Aug 2026 23:34:49 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
