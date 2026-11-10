## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:034f32c4ac028e23d3110d250d21eb583dc85f8c23a4e60214bbd75448e88b81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:b96d51c7b19b91286abc4acfc974f850af8d25d5fcaf78c660a6e21843e4f1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324986084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698a76aa741885826b6180c69e35254be786e596deeb2f0c88c7b003006145eb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:43:34 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:43:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:43:46 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:43:46 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:43:46 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04aec27dc6f088f7b0505463a28d59789597fc25e7b8cc56c68ccb8c5310a9`  
		Last Modified: Tue, 10 Nov 2026 21:44:12 GMT  
		Size: 36.9 MB (36894133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f3d75197a34ed9328a4a271fc26363a3cf38d0540e9e0839a36be25d7493c4`  
		Last Modified: Tue, 10 Nov 2026 21:44:15 GMT  
		Size: 243.2 MB (243241245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:ef438d94b91856c508f1acea3f22a278cb9f83122d2b394858cd092c90714262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca59a24709cceaff58386bbac067da18d61bb4bb8f9261b55c7dfd9fc1756cc7`

```dockerfile
```

-	Layers:
	-	`sha256:334aa95370aee6c19d2e8e0a319356ca560979e78a4878e174f4be0cce520584`  
		Last Modified: Tue, 10 Nov 2026 21:44:10 GMT  
		Size: 2.4 MB (2358174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66c311a5b5bcb2f0678dd1731e986d302a6d4acc4535ac04f7edb5c6cd392a34`  
		Last Modified: Tue, 10 Nov 2026 21:44:10 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:79ed272a102cc3ff492d3a5f4a4edbeaca73b5a95254c11736600788b1a9281a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321526869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf8aabdf5a9a4f6d58f8b4e07389e51cde10823c9ca719e49b63a2ceb84e4ac`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:46:30 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:46:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:46:46 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:46:46 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:46:46 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:46:46 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:46:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26909ae1eac496bdb0072ec4f8df671c3ee6344a44ba7c461b9c9e31d88e079`  
		Last Modified: Tue, 10 Nov 2026 21:47:11 GMT  
		Size: 36.9 MB (36943411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207b29d5b9fa51023bdddbf235203ab6d5a8abd86b036c188920c66fa2fe63c`  
		Last Modified: Tue, 10 Nov 2026 21:47:15 GMT  
		Size: 241.3 MB (241278162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:632cfe4b0d01178bc3fb32703aeb9af2efb456c9a681d33232955917c405fa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2375766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28124af01e52edc6e35b40136d484d3e8fac699c8eeb4e4b2755d7fc8f6b29`

```dockerfile
```

-	Layers:
	-	`sha256:c081abe696eb88e985c89c3e5e45e4b0cccb50d73ce80c4bb0b2a253811e05a8`  
		Last Modified: Tue, 10 Nov 2026 21:47:10 GMT  
		Size: 2.4 MB (2357702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ef0837f0c81e8539546a2439fb873a0cead9f9550bd9270bc6bac3525786dcf`  
		Last Modified: Tue, 10 Nov 2026 21:47:10 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
