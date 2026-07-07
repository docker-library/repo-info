## `openjdk:27-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:ddc1c3989b9f8eca10043a27b4fd42c3269983d65098609fb9f89cf43f7ec776
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:3ab71bd24cbb7b8374d3bf44ab1c2b9136d70f66c3e6d134a56de7112b14e4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307752343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ea943118a9a0f76796b6b10b89fb49fd61fed466592d4c857da829c970fe62`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:13 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 06 Jul 2026 21:39:23 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:23 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:23 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0727806e21499af220779f941cc84a8e26367cc22ad27c03d70508bf16406d92`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 37.7 MB (37687107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203fc4cd7397d1f860015b55f663573aa5561afd20138505d7d9f85924b98dba`  
		Last Modified: Mon, 06 Jul 2026 21:39:55 GMT  
		Size: 227.0 MB (226984654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f82b3e2bde7293bd74ea24ab405212f7e644e91161299791b29b21ca33cc6ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcf12d10b03207fd15c544b3d0162c8ff796255db449dfff423c3dac2703f49`

```dockerfile
```

-	Layers:
	-	`sha256:7b2dc896dc7331f36f662c7cf1b8dc0de82e1e6bf9bcd6c318718301f3df785d`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.4 MB (2366462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea244607af7e5dc5291faf9560b4d253a3e9e5ade35426fac3350ddc706e619a`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bcbf19b55702a23d2b606cb4293ea5cd18b3e31605476c2c6f18783b28dea5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304152262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489b5e43892cd8b09e6adfbcdc783724169aef0ece2d59006196a180ee6351e8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:11 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 06 Jul 2026 21:39:22 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:22 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:22 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:22 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7b2634b133cf600e70886559ce1e886f4bfbd9648f7c9fd5363a3e1ce1628f`  
		Last Modified: Mon, 06 Jul 2026 21:39:46 GMT  
		Size: 37.7 MB (37695905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8931e476112e4b7a73df46333771688dd32aaf1caf54d05927d890e36fef75d4`  
		Last Modified: Mon, 06 Jul 2026 21:39:50 GMT  
		Size: 225.0 MB (224960662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:5298e91926943cb0ff8148b3c6be0325131059b29ff1c50b18c1cb669e4616af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ab7b0afefef66dbc33e0c7d9b41f33ffe7dbebff8578e56bacc0e3adb7147d`

```dockerfile
```

-	Layers:
	-	`sha256:05b572eecb7a0fd0b234dde2ea42110bb1202a878047beb0f9027e1fd8a3e845`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.4 MB (2365990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f9b93b1d91e8247b10bb105781b0eaadd800981beb6f5d151b879e0e4cb1ed`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
