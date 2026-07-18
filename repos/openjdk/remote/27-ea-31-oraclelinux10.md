## `openjdk:27-ea-31-oraclelinux10`

```console
$ docker pull openjdk@sha256:1f09995ab0b9628259a22ae1f842706d023df18a0fb08be1235226209f6f183b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:500b93dc9de53d7ea6c86ff5ee6e37c8ba6432ae902110e1e14ebcf1fc5ac5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309196764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be004170f9f8d9de033baaf2d43c29c6bef0dfcabcdb2378f4f15e78613f5c36`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:57:57 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:58:06 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 17 Jul 2026 21:58:06 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:06 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:06 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:06 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e15844b2e99d9f35840b8412b5c8b5c000100e7184e1aaa2c327d00771dc422`  
		Last Modified: Fri, 17 Jul 2026 21:58:27 GMT  
		Size: 39.1 MB (39129104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e118ca9b542f0caaa5ba2e4b84950823618b4fc99c840431c4b8077521c8ebfd`  
		Last Modified: Fri, 17 Jul 2026 21:58:31 GMT  
		Size: 227.0 MB (226987078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:13efc03b82746dab8b71224f11b5f272ed9faca5169222a992d73401623d531a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45a71d3232e2716b76f1bd797fd3a23c1ceb9484a1ebc74225be1107b929e54`

```dockerfile
```

-	Layers:
	-	`sha256:a0c7f469a9b9c630814e65b3ade034d9179c13246d8d9cfdaafb5ec67b35349d`  
		Last Modified: Fri, 17 Jul 2026 21:58:26 GMT  
		Size: 2.4 MB (2394724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047f81f768b128df8318cce706741c41e335c776600326ae10456329def521ab`  
		Last Modified: Fri, 17 Jul 2026 21:58:25 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:35c3df78dee19e59ba96d58b039049b1bae0721c904fe1c7dc35e7942a36945c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.6 MB (305612108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca940bae8b453e4e92b2e7247c1f08d9704d8a923c0413c156a6439b2d2a77`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 17 Jul 2026 21:57:33 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 17 Jul 2026 21:58:05 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 17 Jul 2026 21:58:05 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:05 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:05 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:05 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2e664745bd6627dca3630c5c7eeabf119aee5d6b56df1f68523ace029376b8`  
		Last Modified: Fri, 17 Jul 2026 21:58:29 GMT  
		Size: 39.1 MB (39129258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b47c8ec85e6b142a46c40ab3279dbfede169f46d27d3e0aee64e60405a85893`  
		Last Modified: Fri, 17 Jul 2026 21:58:33 GMT  
		Size: 225.0 MB (224987155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:b63cd81e6b3c1de35285c57a642b0f3ffc3e094eb4e96d6933f8bdf6900e03cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c61dc4c371a5abe5c5e4e85d179ae4e9c49f28986d8883520acd5b6977984e5`

```dockerfile
```

-	Layers:
	-	`sha256:1ef82906e9e77bf39c22653b9a67880075916e6b2c87ce329a31cff3c6bb5c54`  
		Last Modified: Fri, 17 Jul 2026 21:58:27 GMT  
		Size: 2.4 MB (2394252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3182109d0079da205fba77022c290d8e09ee47a8b50e961a3f3135bdb6b2fd7d`  
		Last Modified: Fri, 17 Jul 2026 21:58:27 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
