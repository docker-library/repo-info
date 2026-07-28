## `openjdk:27-ea-oracle`

```console
$ docker pull openjdk@sha256:b41900ad41e51cd32000fdebd6dc1d8a4c317c1fa56317bd7a174b444cab84c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:4a8d1b4d9e08aac3153c358c52c2abb79c463498dc1ea86d628904a8e89b9b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308707080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84563eded6c9b4bb9c5a103704b0b7185d8b354a9a0bebc5deb390d23f024e37`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:13 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 27 Jul 2026 22:07:13 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:13 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:07:13 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:07:13 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:07:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a6faccc65ed9243eabb023faa265fb6631e9896c120e2d39712e130c3d29a`  
		Last Modified: Mon, 27 Jul 2026 22:07:36 GMT  
		Size: 36.9 MB (36854623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc3ef16a7c3da684d1926300926469857978cb7aa833834cd9f979b2874382c`  
		Last Modified: Mon, 27 Jul 2026 22:07:40 GMT  
		Size: 227.0 MB (227020118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:ae34f9c57281dde0e32da5ac006292ad5422e383a89ae0b4f53aa234bc5def21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550e4e900da7cd35cf98917abd4ac297ce6a2679fee2e074c1995690fa8e51c7`

```dockerfile
```

-	Layers:
	-	`sha256:292cf8dadd1d11b177062375389934f42ef217a8e49f0fd2ba2f6bbb6ee57d39`  
		Last Modified: Mon, 27 Jul 2026 22:07:35 GMT  
		Size: 2.4 MB (2373349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21fecbc27298098cd15aaa452ec4e7badc49e8aab52e1fc3c8273ee40bdc599a`  
		Last Modified: Mon, 27 Jul 2026 22:07:35 GMT  
		Size: 17.8 KB (17848 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f0a99cf3472cd2004013f086a5b9ceee3943406584daeb626843aeecbff83edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305188457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd42801b559da102bdfc95a96fee05de18b942484f4814e7f8df513e3de2f94b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:58 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 27 Jul 2026 22:06:58 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:58 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:06:58 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:06:58 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:06:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399a82b46fb27cf801109cd0a33aaefaa2467780b035cca7660ea7031a67f9a`  
		Last Modified: Mon, 27 Jul 2026 22:07:21 GMT  
		Size: 36.9 MB (36903303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31efe55308a33be6e91cca5a13c535e0097d5821a49443ff820b62303132d335`  
		Last Modified: Mon, 27 Jul 2026 22:07:25 GMT  
		Size: 225.0 MB (224997261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:a70bb158ba4f403b1a656eb0c972cb33c13cd8a9a53f929c68d179e45b8ce261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1a06361ebc38dddecd5d0b4682ace0247dc411de9d27bed4630c922883de1`

```dockerfile
```

-	Layers:
	-	`sha256:2abfdb0f7348cd197606c0102a8d39bb32dc6c055c75bb660773a4ec5efe83df`  
		Last Modified: Mon, 27 Jul 2026 22:07:20 GMT  
		Size: 2.4 MB (2372877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:527d3f2cd4747038dacb0c0858df8db7748d95972596c1ee5880bcf99f1cd012`  
		Last Modified: Mon, 27 Jul 2026 22:07:20 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
