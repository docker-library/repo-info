## `openjdk:28-ea-23-trixie`

```console
$ docker pull openjdk@sha256:2874c7edfa4524a64e29ca46cbf2df5d330f34eb6d0f8ae3d501b506895a262c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-23-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:39a6055d7c1ec1359c561963c9d67ebf56580f03afb8fe550f42145f1c1ff2a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.3 MB (402299289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db8fe194e2cf787963665a3599260b7b11993f60558a7c74468f65a5d2df46b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 21:43:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:44:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:44:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:44:09 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:44:09 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:44:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:44:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6d1fb6f518bb5b318e03fb5f864a1b3f9c825e54c214c54aaeb5af8cf6e12`  
		Last Modified: Tue, 10 Nov 2026 21:44:35 GMT  
		Size: 16.1 MB (16068628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76b1e150ca6dfdedcf6f5375cf6d2459eae603cee5bd7332093fea66fda841c`  
		Last Modified: Tue, 10 Nov 2026 21:44:40 GMT  
		Size: 243.4 MB (243365069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:fe82b66382d8198915d9ca4821b40a7d98033b8ba3c3733d1202bc89d1d2f2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8537248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76af14379e97308eaa773a35dddcdb2b3b72654f6d19fbc96a78e36bceb216b0`

```dockerfile
```

-	Layers:
	-	`sha256:20b8ceba79fa83a26368823377228d3614e44fd5836e36438446bf149ced488e`  
		Last Modified: Tue, 10 Nov 2026 21:44:35 GMT  
		Size: 8.5 MB (8519335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ffe2dc94a06e30ce26d8d4df6881e24d5a5772f9d3d6bed647e7c92a70499a`  
		Last Modified: Tue, 10 Nov 2026 21:44:34 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-23-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ca992258fd6e116db184c0f01e93dab43cd5d4b9096fdf07de33c2e3049f3145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.9 MB (399918858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519bcc86552e4da2c3bcd9c88e1b5dcd58728a675493b62cbeebcebd267d3017`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 21:46:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:46:32 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:46:32 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:46:32 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:46:32 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:46:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d97e233b45a732d1d1472f3cd0c3cda6443f10a1e737fc0125554da768ff18b`  
		Last Modified: Tue, 10 Nov 2026 21:47:00 GMT  
		Size: 16.1 MB (16071424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c543af1de7c4b81bc5750efa1a3a8f4f3c5bd750f7b24dfb3da2de5477eedb9b`  
		Last Modified: Tue, 10 Nov 2026 21:47:05 GMT  
		Size: 241.4 MB (241397544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:61a4a839e3e708f8a367ca78d67a228081acab755e5a51558692275b51d86cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12809162b102f44c43b60dbf89d655e21eb98784f242539c32b5c1645e3c730a`

```dockerfile
```

-	Layers:
	-	`sha256:7a8f1677b5028324e45d2bb5fc83f16912e0c5fd85fadb48f72c5fdd2c642d92`  
		Last Modified: Tue, 10 Nov 2026 21:47:00 GMT  
		Size: 8.7 MB (8713488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaa6de22c982cb37b88d1f5747e66d7735834683ec899053adee9db1d647529b`  
		Last Modified: Tue, 10 Nov 2026 21:47:00 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
