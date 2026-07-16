## `openjdk:28-ea-6-oraclelinux9`

```console
$ docker pull openjdk@sha256:9d73a1f010b5af865b8d4cda4267e7265b196209f76b3c4dddc7365e8373011d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:37956fa6d30e7e63bd6252dfdb9d2181697104560ff3695463b033ea56f817ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313672100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863a138a17432cf318cadee23aed1390e3ac7ccf90694c83c22a7581c2dd959c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:11:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:12:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 16 Jul 2026 21:12:18 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 21:12:18 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 21:12:18 GMT
ENV JAVA_VERSION=28-ea+6
# Thu, 16 Jul 2026 21:12:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 16 Jul 2026 21:12:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04075b6ed941dc7185996525592979596ddf58e89c872ba3b969446bd177312`  
		Last Modified: Thu, 16 Jul 2026 21:11:59 GMT  
		Size: 38.3 MB (38296231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4a5b858e44db352ce6fea5568c1d65658e3e79d62a65446e7ffd773e90b869`  
		Last Modified: Thu, 16 Jul 2026 21:12:42 GMT  
		Size: 227.4 MB (227447481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:f1c1e1060ef13a23837e0829edc8bd27bd84a895c984c6ee4a8b860e5ec90e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594c16df3ce571acb09c27b73ff9eea16dbce0dd513e63a305c98cf66eb3260a`

```dockerfile
```

-	Layers:
	-	`sha256:963280dda32f127dc29bf707b4f9bb3128d645ab2fa78ed4a896f64aae9b5978`  
		Last Modified: Thu, 16 Jul 2026 21:12:37 GMT  
		Size: 3.7 MB (3652197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5916b28fbcda5fa2db0d834d15b61217874010a2698118db87cb5e914d0cd21a`  
		Last Modified: Thu, 16 Jul 2026 21:12:36 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e82a3f33cde92272663abfe43decd93f2d6bb8d4a4168903b43fe73454531302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.7 MB (310675476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbfcbfa06c5b1cfb5a8eaa7869f0a10f6a8f0d79f2ccdbc774744e2b6463514`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:11:03 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 10 Jul 2026 17:11:03 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:11:03 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:11:03 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:11:03 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:11:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf8351de1ce64b7e6c3abda73b984baad4b2908c1f44f8e013dfea5618a09d9`  
		Last Modified: Fri, 10 Jul 2026 17:11:26 GMT  
		Size: 38.7 MB (38692512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5efa2fd0bc41611bd0a34960ef35ba72aa0f9a3d0e3fba0b06c31623a87dc`  
		Last Modified: Fri, 10 Jul 2026 17:11:31 GMT  
		Size: 225.5 MB (225506978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:f0b9eb7e474053d2c066341d3e75fac32b46b47bf01d5f3e37b0f9907cf1e9be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f133630e4d07d780279e031383efdda2fa772b13eac1f9ce957a1d2ccf4f3c9d`

```dockerfile
```

-	Layers:
	-	`sha256:5d102556692b9f837f315d04fead47d17bc06e859192f22d9fe8aea31e896e66`  
		Last Modified: Fri, 10 Jul 2026 17:11:25 GMT  
		Size: 3.6 MB (3649807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e64b72535c98601d9a7350bc13c27709df5017862fd92d0adce2a796dd2f9e7`  
		Last Modified: Fri, 10 Jul 2026 17:11:24 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
