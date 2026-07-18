## `openjdk:27-ea-31-oraclelinux9`

```console
$ docker pull openjdk@sha256:b93d40b2bb1f10b8724337ff947808edf565202e5c1d317f574aa5429f7d67b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:5e776dc9ccde24aa57db03e434af007232a611edd8184770eaec54338ef3f48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313211476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79caecdc3c0920379472e8a2ba5884d5422c1ca70231906abfdf930e38e4c18`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:58:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:58:48 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 17 Jul 2026 21:58:48 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:48 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:48 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33eaa7dd8130de0a11152df49a7eceac037ac62d45c481ddb44760d4520ebfd8`  
		Last Modified: Fri, 17 Jul 2026 21:59:12 GMT  
		Size: 38.3 MB (38296558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79d8352cc44f3750492f60f82536f3802ad468724097bee665a4c3fb41c3472`  
		Last Modified: Fri, 17 Jul 2026 21:59:15 GMT  
		Size: 227.0 MB (226986530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:ce6e571ab1f2ececfe1095d794a540704698d870e967ffa7448684f364c4eac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d11bc343eacf9976d8b626f5e067298dc336ce3c556f44db789e202f1533e0`

```dockerfile
```

-	Layers:
	-	`sha256:948bc801c7830605a216fe68978777efaa2aa1e1950b26572a9d91a96d5f3258`  
		Last Modified: Fri, 17 Jul 2026 21:59:10 GMT  
		Size: 3.7 MB (3652205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29f6235a7180635b724344346af6de6434c267279f195e9c593236a72c1de23b`  
		Last Modified: Fri, 17 Jul 2026 21:59:10 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b8de94582618c0f6802f0ae7c0db9bd6490889c8bd97594969773e9fe882dba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310155818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05398194e744f719ae0892f409525ad30bf3e7c923052f2742aca5c64025d7e7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:58:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:58:40 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 17 Jul 2026 21:58:40 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:40 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:40 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:40 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de46839d42dea094ed312f73b15967cc9c5c1a86bd9602f57af346dbf6698a44`  
		Last Modified: Fri, 17 Jul 2026 21:59:03 GMT  
		Size: 38.7 MB (38692888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fba870cfc8f9b23578f07acd15ea8f4406c8b7e4e35f6277fce35cae252c1`  
		Last Modified: Fri, 17 Jul 2026 21:59:06 GMT  
		Size: 225.0 MB (224986944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:ff33561ab05aced337a9f9946b21f3fe9b7a22b3de26a3c34853beb317e537d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2acc24b1f4a4b083fddf5b0ad8a8dc999a59990ce99110af319cdfdf2b9b12d8`

```dockerfile
```

-	Layers:
	-	`sha256:77a84fdf92f4679aa944f3172e74ee54eb639723e0a9f52e392ea04f94fc3695`  
		Last Modified: Fri, 17 Jul 2026 21:59:02 GMT  
		Size: 3.6 MB (3649815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:506db04cc3eb6ffe3f8a7e5609e734ff7ba9060cf4aac9489eef95b481d5474b`  
		Last Modified: Fri, 17 Jul 2026 21:59:01 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
