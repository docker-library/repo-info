## `openjdk:28-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:5744c51cbf3014d9eee4df700916608f294bb5f3f6e9f136d151b8b409556ce2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:5c456f520a0d07609d5f6d1ace1024b64a594a261803e4fcdcc2b66db5a4115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324614008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7891ed2c8851ff35acdf293a727e325e7b58d16bad13de7d6b5f09c0430a6c47`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:28 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:28 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:20 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:32:31 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:32:31 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:31 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:31 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9f79e87364384938c129a36c63059f3b9f44b0ecc5bf0b9328aa7de55fbf2483`  
		Last Modified: Mon, 12 Oct 2026 19:10:38 GMT  
		Size: 44.9 MB (44901103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c691381896f889c5f304e5e35706b8ff9e0080e990accbb3693fc5f72a7a00ea`  
		Last Modified: Fri, 16 Oct 2026 20:32:55 GMT  
		Size: 36.9 MB (36877985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210af991635ff153c232be23b1a97a333521e581130421614658ad875d2d1fc6`  
		Last Modified: Fri, 16 Oct 2026 20:33:01 GMT  
		Size: 242.8 MB (242834920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:c4faef0f5661daf7d2d8d67f430ccdb9e6f12734def3e9c68e199d118e0db15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767d16dff7b457a8359c400b5282939fe05d041cc9a78f8709af13ab357274fa`

```dockerfile
```

-	Layers:
	-	`sha256:7cb149b82f57641598cd9126dadb03e9d6450fcc3beb5460c5eccbdd7451a135`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 2.4 MB (2376705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c22f98cec0d292775de5a9c8e004ae10cf97d138d7601ed94ca0c5e2a4d28a4`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1f8969e9dce0da77ff78c8be17f3779934a75cf42eb84aebfbedf9987bc3c4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321172880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54d394c494ddafc5fe1984ef17bd864ec384d7f74ea8584bc84e7942703fb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:09:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:09:53 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:32:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:32:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:17 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cddd3cf7f96f27e9d7642af5cb3594a4f8baf2a6c7d24235bfce815f70f15fd7`  
		Last Modified: Mon, 12 Oct 2026 19:10:04 GMT  
		Size: 43.4 MB (43361849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01228dacf898730a3fcf8a109f15cce591c715482867e7dd8f435006ab828ea`  
		Last Modified: Fri, 16 Oct 2026 20:32:43 GMT  
		Size: 36.9 MB (36947364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a13d2d5d52431d324e3b862a296266ae4afce8a3ad324ae724c5c8f82ffa72`  
		Last Modified: Fri, 16 Oct 2026 20:32:46 GMT  
		Size: 240.9 MB (240863667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:ea3ae8730dee1a49d4c5f45b2117ab59d535543ec985e66393623b17c18062e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec71bd03c270a3ed4dff3e1966a585f55194fec114d08b9527cb2a8f99d00a7`

```dockerfile
```

-	Layers:
	-	`sha256:e46b376d5134699b9a698df00d1afb7e1a1a677fdff0f88d38f3a7370ea48d70`  
		Last Modified: Fri, 16 Oct 2026 20:32:41 GMT  
		Size: 2.4 MB (2376233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34521a843d6bc4dc4250275f323f4dda7c1af9f7990cec45c355dc2a0f6afb53`  
		Last Modified: Fri, 16 Oct 2026 20:32:41 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
