## `openjdk:28-ea-jdk-oracle`

```console
$ docker pull openjdk@sha256:f9d285981ff1663b9e8e6a85b66f8e5875c01a3980e0a22fcfd236db48cfe71f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:78c7d2253fb091788154ec8cc37134770aadd7818e5c11b249c3c64f135b9bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (302997768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4e10daa044a06de42dd5fd55bad1ce7e0d312315ce973677a8696831db0491`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:11:10 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:11:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 22:11:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:11:19 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:11:19 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 22:11:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:11:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1088d5073b13e17db574c063017d10c72e487504474ebb185cd6136ccb5ce201`  
		Last Modified: Tue, 04 Aug 2026 22:11:42 GMT  
		Size: 36.9 MB (36856925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49770998615197e5ee8ecbfbe0eec20e9b7964381c78acaea0df7dab39146d40`  
		Last Modified: Tue, 04 Aug 2026 22:11:45 GMT  
		Size: 221.3 MB (221298393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:0ddfbaeedc4d2ccd45a7e408439254e43cb9096075878c430bf07a75411f9392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2b7743f5a7daddb5587e4f08c097323d5382eedfd416ae2e1a33ebfbcd714d`

```dockerfile
```

-	Layers:
	-	`sha256:6f5d24f5f8f704a183bdea783d98495ea8ef29e2f3cb97bd6480e268146cf426`  
		Last Modified: Tue, 04 Aug 2026 22:11:41 GMT  
		Size: 2.4 MB (2373366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ac70fd9d1080bc5427d1226e5a1bf0a0f7313e5c7c1582fbe6f3e5fe1e61a5`  
		Last Modified: Tue, 04 Aug 2026 22:11:40 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e97b7156c74e119fb8ff47dc8c6d3652218a8092522e20a1e90563c70098373e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299575156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:050ce2e92fa490a9b1f383c201c626f435835dcc1987effbafcbe8111c83dd6f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:12:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 22:12:13 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:12:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 22:12:13 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30dfcb211cfa835754434d1259ed3afe5f66044b53a73cba3c2c84a078c2dd5c`  
		Last Modified: Tue, 04 Aug 2026 22:12:36 GMT  
		Size: 36.9 MB (36914977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a9d10452475730c9d5e2b9c52f1990b2b5a14858c69e1fa4174ff169a08fa4`  
		Last Modified: Tue, 04 Aug 2026 22:12:39 GMT  
		Size: 219.4 MB (219358755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:f3118851ba42c486d325d1aea63075320ce3086d075afd846152f564c0a1c656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e881aca9f472aabdc18a5a80fdab85c71a094c73b357f5f2b095ff1205873f3`

```dockerfile
```

-	Layers:
	-	`sha256:87cf683a8122a00c3a42dcaf935dac2fb086a9f4c7d93821d86a597d676ab240`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 2.4 MB (2372894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0e386b87063f148cb7b6c84de4dbda5be103b490246b8f89d34ac5beb0360fa`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 18.0 KB (18043 bytes)  
		MIME: application/vnd.in-toto+json
