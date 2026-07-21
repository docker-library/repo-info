## `openjdk:27-ea-31-jdk-oracle`

```console
$ docker pull openjdk@sha256:75d232acde19bacd3cb7d2661e54b03edb8cf93af6a811ad231b932525017101
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:061eb28e92dbd32723a1c4abef000a0311380206bb6705d3f2c4319631bdce2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308673882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699668b358ea585a7fa93d7a854077a057f9864f59a10908e44fa2c4e28e8954`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:20 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:10:31 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 21 Jul 2026 19:10:31 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:10:31 GMT
ENV JAVA_VERSION=27-ea+31
# Tue, 21 Jul 2026 19:10:31 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:10:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e84ac769025b735ad963c991fc844729d330bf00b06c1a99cdc3e0af9fc380`  
		Last Modified: Tue, 21 Jul 2026 19:10:55 GMT  
		Size: 36.9 MB (36854490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1167171b909d75d85ac3beb017975c3b312cf6da82f9c06695fd33a470d89`  
		Last Modified: Tue, 21 Jul 2026 19:11:00 GMT  
		Size: 227.0 MB (226987053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:500762bac56e7174319f6acb54e07ac43c9edcc133c708734228c33c4c0f76be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a71f30d9db5f6d581a303dd1256565356252104e21086cf1f3e75a6fd3d827f`

```dockerfile
```

-	Layers:
	-	`sha256:2574a48e7dafa0aa7b4ea1575c2da3ae6d099e3e22bfbbd685f2a059c174bae9`  
		Last Modified: Tue, 21 Jul 2026 19:10:52 GMT  
		Size: 2.4 MB (2373349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de3e18084faf51a52889f461fbdefdc6a99217204f3129b6d053effe0cd3585c`  
		Last Modified: Tue, 21 Jul 2026 19:10:52 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3fc87a2aa0929fd3866b410702229e80f1c86b99827cc0c57e9c284249829abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305178196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c2748020357ef11c57a5a4f2492486aed9cd0bb34e45af4cd525511f9b2e68`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:56 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:11:09 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 21 Jul 2026 19:11:09 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:11:09 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:11:09 GMT
ENV JAVA_VERSION=27-ea+31
# Tue, 21 Jul 2026 19:11:09 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:11:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4792d47620872b62ba02bc240adad146c152d03519562f02b977a4476bb07dc2`  
		Last Modified: Tue, 21 Jul 2026 19:11:31 GMT  
		Size: 36.9 MB (36903105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54053d9941f0f7b6f368033377669ec356caeefdefe96be193cca06f1925e7dc`  
		Last Modified: Tue, 21 Jul 2026 19:11:35 GMT  
		Size: 225.0 MB (224987198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:6a693601435bc85cfefc7a39356f995ebdbd2008b09a3746abeadb686c9a4746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec05f596fa9187a18945efc4bc331372686a51dbbe6a779470e6809b4168e8ed`

```dockerfile
```

-	Layers:
	-	`sha256:dd9878339ea8247ce426c0f8f31465a7d3ba3f86dd8728683240fed3eed4b9ef`  
		Last Modified: Tue, 21 Jul 2026 19:11:30 GMT  
		Size: 2.4 MB (2372877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:377075db99554cd7b4431c6b30e0c2a94b1958909c8f97ee62f226e17a9515a8`  
		Last Modified: Tue, 21 Jul 2026 19:11:29 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
