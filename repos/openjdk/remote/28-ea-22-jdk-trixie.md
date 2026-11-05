## `openjdk:28-ea-22-jdk-trixie`

```console
$ docker pull openjdk@sha256:9273b7e86deedaa7109155507808a7b8cf5d4cfa2ea3cfe72f89330a356d78fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:1ed01d202a504efb5e8d7c628d50ff985c0ee423b09be11a20867a740ff04e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.3 MB (402282688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6a562c9defb132c411dd946caa41724573b4bcb25f9d584382a1329d2fef0c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:05 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 08:54:05 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:54:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:54:05 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 08:54:05 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 08:54:05 GMT
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
	-	`sha256:23c9e8b68457ad904343fce97b8f417df5c0d42e9781bf14ba7b7522dfb1c88e`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 16.1 MB (16068428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceaa04ec3fcd702db0afb3a529ef0c3e274730cbe5d0be48cf17ae59352e7c18`  
		Last Modified: Thu, 05 Nov 2026 08:54:34 GMT  
		Size: 243.3 MB (243348668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:b748870f7437d54bd45e04bbc5615d86acfa5e90412f003c935f8f27ae4f88a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8537248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ad46f6eae478c06b08ba8d3adcebfe0ebfbd27452606d7ead71de08fe34814`

```dockerfile
```

-	Layers:
	-	`sha256:56c8075a64ed165488d7ebdd238a17634739ec3dfa5ea99191c6662f88eda9c7`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 8.5 MB (8519335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a436a2d84a48298fd82c4badb25d5e61a25080cb5a6de842dc4ca76839ae0020`  
		Last Modified: Thu, 05 Nov 2026 08:54:29 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a62954d9d44eaaa19f2fb748ba8243ccaeb3d66101e456a340d98c992b9bef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.9 MB (399899566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38ebd3607060a37036fca6207c41d34c3602738c59e13b5aea0ccccb56c860`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:49 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 08:54:49 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:54:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:54:49 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 08:54:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 08:54:49 GMT
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
	-	`sha256:6ce7054b9489c6651230101d75364a02961965be54541b51d708f9842d79bfb7`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 16.1 MB (16071327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290794eb7a97c4b9a86db05f04066ce6be1c640a4155a385b91fe163fb9c8b84`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 241.4 MB (241378349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:98633884c64d341e706318be3154e1249b10cc5a322a792444f72fb5a5fc422b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c79882f4c314a0086788036d2dd062d952d142b8739bae71968e3b9ba279771`

```dockerfile
```

-	Layers:
	-	`sha256:2b44a129abd0f502c1c9e3c018276ca1df55545bc80986f3c69291960eb4fc51`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 8.7 MB (8713488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:142227517fa641e34a5a2e5ed8a1c55bab9bd983da8f2f58a7a658eec78b10ce`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
