## `openjdk:27-ea-30-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:17aa0d719fab4a69159bae4706bdde612ec705eee9c39c850e71dbf1d30b61b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-30-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:01008679c928d04a3efed80fa995d21e636f54598bddf7ae5c694c9443e59079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307747257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75db6a9d140ec1c5d36351228ac5a9c6fa2e0a17678970c066b13096177905`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:09:17 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:09:26 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:09:26 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:09:26 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:09:26 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:09:26 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:09:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db18f4bc05bee0a9fb7a7c1b45058309d3db1f7dbac985c5a7c07a83d185d`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 37.7 MB (37687939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de8917e38386c7733ea144e606870a05f479d83cd1ef7b83599426db20b75fc`  
		Last Modified: Fri, 10 Jul 2026 17:09:53 GMT  
		Size: 227.0 MB (226978736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:603c639d47296588900fd6d759184cb76fecb43bef3c76b81c2b1c5f81aa93af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db78f21febcb8b536c83b6ba48e8da4e078d415b0acc1cd543076fa851ff0e42`

```dockerfile
```

-	Layers:
	-	`sha256:1822ec7073cf9757bf137a4adee4f9ee4e204680bf1164967951c1db8828ce6f`  
		Last Modified: Fri, 10 Jul 2026 17:09:48 GMT  
		Size: 2.4 MB (2366462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:771c06b65ee3684180a960953c8d94f6765c7450026f8eae8e1bdd4487acdfa1`  
		Last Modified: Fri, 10 Jul 2026 17:09:48 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-30-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2acf4990678771c1bf42be9ff6275ceb3dfae7636722cf3691e1845ba9b9025a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304156726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653e26c04193b200d3478679b339595cabcf0e0cfbad8dc790e73296371cfc33`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:08:59 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:09:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:09:28 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:09:28 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:09:28 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:09:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:09:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5330e6e81762d58653fbcf22aa3e51bc0ee858d5e001b4d3a917fefecc1953`  
		Last Modified: Fri, 10 Jul 2026 17:09:51 GMT  
		Size: 37.7 MB (37696007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2f19cb61f71ac9825087e6be3cf30eb046634bd9b5a989c61727be0d4e106a`  
		Last Modified: Fri, 10 Jul 2026 17:09:55 GMT  
		Size: 225.0 MB (224965024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:e5668d723a8316e541245698ad859fdeb36f56549165ebc5d101581d9e2dcb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f652c5e8516530448d877f45d67fd2fc751ad30c2ba07d65eef13c59718634`

```dockerfile
```

-	Layers:
	-	`sha256:36a87f9d1c7538ed2efd7fa9597a9004a67bec5a8fa2db93144a84fbc07c1850`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 2.4 MB (2365990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3345964e1629493e25bc0c44590253bff7f618c39d38f6e387555732117d318`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
