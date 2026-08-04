## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:dc94b3e00ff1cab16b61ab9641a8da1f57fa3938e4d2f010a037af003db3a824
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:4387bec3b305a6dcfac1481656755ad5da966b92cab43230d28c359d0f0cb820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307509260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324cb3cb31fa5f0ce8148099e880a71b7bcbf6ccd439c8d915a599b4e6230e86`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:50 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:58 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:58 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:58 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:58 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:58 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ae1a1d25be9db951a8a27541116de16b15a187e08f70cb6e07ba03b25c29fe`  
		Last Modified: Tue, 04 Aug 2026 01:00:21 GMT  
		Size: 38.3 MB (38283269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eda3f645c4fb6f04ad997d7855012487062c05499630d55d892698cff222af`  
		Last Modified: Tue, 04 Aug 2026 01:00:25 GMT  
		Size: 221.3 MB (221298239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:2ff28adcb72a3f6d2d0c2f28f46d4575a692a47578284f620d69069888445ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6e75d37dfe2b78383e9070f407801986b1a152e684dc3c169073c86ff7040`

```dockerfile
```

-	Layers:
	-	`sha256:3a1af89a3754d20d573104e57d4f2b58a88602889402954761a3bcad0b275d10`  
		Last Modified: Tue, 04 Aug 2026 01:00:19 GMT  
		Size: 3.7 MB (3652829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8c13ee0fa40489b7febb79720f2fcc798482c55510ee64f900b80807dd8d15`  
		Last Modified: Tue, 04 Aug 2026 01:00:19 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:235c0996e1a49afbd0e7e362a9872035bbd050107f8c2ac3940f87fd27fc7c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304522381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b839780433fc5cf6aaf2720c77e05fe8838fbba69c5ab952439098bf34ffee7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:49 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:49 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc0f0ca1dac2866cabd8644c8538717867ede426b5bb9248e7bdebea86e5ec4`  
		Last Modified: Tue, 04 Aug 2026 01:00:12 GMT  
		Size: 38.7 MB (38685747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944962add81b85d44d06e0adf7efdb018e22a9abb94b2d4d5795416c356132e9`  
		Last Modified: Tue, 04 Aug 2026 01:00:15 GMT  
		Size: 219.4 MB (219358729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:c2654bde63ef5a77a263e75f518820166e43a92bd5259b9926602d3f0d897208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a8c8ed182e0befff83ff9a864e22e9bd1f8f2ee3f3bc700d5390e4c3636df4`

```dockerfile
```

-	Layers:
	-	`sha256:c0d0a742c02c9e5f5a5b92caa56798c4c187f7ee1a9e3fc9c47cc64ea537eb85`  
		Last Modified: Tue, 04 Aug 2026 01:00:11 GMT  
		Size: 3.7 MB (3650439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4f50e814c8c02d64f040214b71419b8bfc02ec681aca2ce49b3260579246257`  
		Last Modified: Tue, 04 Aug 2026 01:00:11 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
