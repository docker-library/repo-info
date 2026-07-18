## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:355f403f76716c45f6a87a44d79882c4740c787d570eba66d29c1734f97028ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:3fe0ad2fe1cc85bd2bc795a4f1ee65e15a25efd32f4855c9466276d3b58d4b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313700224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9ff9ed842dbef86660fe9d9c9ca1c9c019fff9538f86eae7f1fc1712732d5d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:59:09 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:59:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 17 Jul 2026 21:59:20 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:20 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:20 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 21:59:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6923074957f47c34c243ea22c17aa8afaddccdb7680441e0fed8702326255a`  
		Last Modified: Fri, 17 Jul 2026 21:59:40 GMT  
		Size: 38.3 MB (38296673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f32dba80202fa91e62657b9186752ebd3f07d18990bed03a643cdc24c08af7e`  
		Last Modified: Fri, 17 Jul 2026 21:59:45 GMT  
		Size: 227.5 MB (227475163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:eb95a76cd66d13993d084cda85587d1524d237473decd179f2a9b34715fc2476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9df1cec13f303193b73431c4e01a846abbcdf8d8810b0e01bea38b08d7ba94`

```dockerfile
```

-	Layers:
	-	`sha256:3d07ec22f1aea2aaa2505f38207a5ea7ea9bd8c931b8ed403b2cb74a69141a9b`  
		Last Modified: Fri, 17 Jul 2026 21:59:39 GMT  
		Size: 3.7 MB (3652197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c2ae4168385583458bea4fe8c9dc9661bc817333f514dcc020906d7a64ff230`  
		Last Modified: Fri, 17 Jul 2026 21:59:39 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c50bf3d1e92e52484422573cd579d47c8192da7df32e586efc8e00cca1fe07f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.7 MB (310690660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22c63bf022bf254a982797167106533430ab260baf8c716617c50a29ada1bc3`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:59:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 22:00:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 17 Jul 2026 22:00:02 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 22:00:02 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 22:00:02 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 22:00:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158179216daafe57dd6cfd505e08be1ac212c0c0b1f831045eb96124e11832cb`  
		Last Modified: Fri, 17 Jul 2026 22:00:28 GMT  
		Size: 38.7 MB (38692371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d119c354e2ae4b3ad88ae6ab06cbbb0c07729362ac13009afe0ab8c1d8476a1`  
		Last Modified: Fri, 17 Jul 2026 22:00:30 GMT  
		Size: 225.5 MB (225522303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:677404a38683ec0fd673e14bce1643517b7731d0915c0b46ac10cb9ce6263ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4610e99bf1a3199855a4f0229a6b687f62a61d61adde443a24cdc3c3e76dc4c1`

```dockerfile
```

-	Layers:
	-	`sha256:c5278d526b51c7841a0bbf097c82ed275c080b4f8f66f76eead8bdc599c6c735`  
		Last Modified: Fri, 17 Jul 2026 22:00:25 GMT  
		Size: 3.6 MB (3649807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bf25f0570cdac8878ac9840bfeec0f3c19a2f76fe6184274a5e55e164ab4f5`  
		Last Modified: Fri, 17 Jul 2026 22:00:25 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
