## `openjdk:27-ea-jdk-oracle`

```console
$ docker pull openjdk@sha256:cf8ee3cd052c570c9f754705b0d410d12582f9fe634604ee591b6215e5dbb4a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:c614214d0d4d09a3ff8e099e2266584f5f6410d362d1479d2968d7b16381e46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308721079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b444dc9c91f642a913b3c1cbadcb0ec70fcad796e4b7011990e898b76f69478`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:10:51 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:11:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 22:11:02 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:11:02 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:11:02 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 22:11:02 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:11:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8fdab8931f7de94e5c3639cd9bee182b1e2ff61004a97860c4e62fb900a11b`  
		Last Modified: Tue, 04 Aug 2026 22:11:24 GMT  
		Size: 36.9 MB (36857143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafde37a26dd68f3db466ac20f0488369915f9ea2be368b10418293d163e4561`  
		Last Modified: Tue, 04 Aug 2026 22:11:27 GMT  
		Size: 227.0 MB (227021486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:b4e1b612dfc71c3179024b1bc923088e0bd0055d071d8652f9254f3ece17645d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7d94420e7fbf230d8084f522acf14c009ffa509f80c133ae0a1f350736a9a2`

```dockerfile
```

-	Layers:
	-	`sha256:93a63c1cb5257761f677a153c31684ebe62f64e44333fc058fd4c6a137033179`  
		Last Modified: Tue, 04 Aug 2026 22:11:22 GMT  
		Size: 2.4 MB (2373382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e580e1ec277e0fe7952cabfd4f38f8ed6e45500f86f940a3552fe45f39e860a4`  
		Last Modified: Tue, 04 Aug 2026 22:11:22 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b1a68ce893a232339382568c2cf2971a63d5809c3d9dc5552e7d15596a5786df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305213968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c842bd95005fae702f95f59498524c71342afdf624f8df4d20d489a41abe687c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:12:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 22:12:13 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:12:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 22:12:13 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32af5fcd6bfe40bce606df5f1adfd28462dba617a6a154db178a956fd507b14a`  
		Last Modified: Tue, 04 Aug 2026 22:12:36 GMT  
		Size: 36.9 MB (36915098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ec507d6666ee980b0a2e3ac0f21d9d88ee121cdde9ae03658ef458208688fa`  
		Last Modified: Tue, 04 Aug 2026 22:12:39 GMT  
		Size: 225.0 MB (224997446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:889ac501f0935ad22c64dcc1fe914234a2ed390a0b710d59b08fa92e2cbc7d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd3c78820aa33d0aec64f9cb2c9f18349cf9cdf7bc909f96a2348756ad98b5e`

```dockerfile
```

-	Layers:
	-	`sha256:c8cd15599238ca86086ceb960d3ad610d14ed94662f44e750c1bfb407f741d04`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 2.4 MB (2372910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc84ae97e850e6cd65f2ab296452f2ab9c2dbc8b133eacd71b965959cb7b0f49`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
