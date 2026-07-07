## `openjdk:27-ea-trixie`

```console
$ docker pull openjdk@sha256:f96899001171105397ff16fdc763cffca3f4e0c49cf288a843b75862c25208c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:01f95feb134350b330ae1417123502fb986feee88005ad52e621c840c9a1d62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385892566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d611fa3acb4eb089a9c3d6c7f5b307bc01d75f0fee4c028350b604294895092`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 21:39:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:23 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:23 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:23 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b141ed627882ca6ecf722fad29038a4381da2f5a7f6f547444eaa74b0912c2`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 16.1 MB (16065725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8484b6e8c6a9af388b1899692553958f6d447f09e2df8a59a9d8b13d81df64`  
		Last Modified: Mon, 06 Jul 2026 21:39:52 GMT  
		Size: 227.1 MB (227096514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:85f1187ff03eb3824ad731314a7e841ae7ab2ea18be5e3479afa14f87700599e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc795a0b03b91f7e01570a4a7573d8d6c4d128f109d84d1d9108f55946a6751b`

```dockerfile
```

-	Layers:
	-	`sha256:91b61ffd4a410b77c4e13a9ce447fb7c179190146d4aabb7a802bb00b860acc1`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 8.5 MB (8508895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55c9092d08ba9e3d0f85eb8ec552c9ba5eff30624cc98c3435e01b0e50e083ce`  
		Last Modified: Mon, 06 Jul 2026 21:39:47 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:62591de3170a648575fbb1f59b71796e445d0e6812f4d430a405ed15e9d5abfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.4 MB (383447982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571b4a19ad1f943abc58e70c66cf33306710e26756e63636a7498324933558dd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 21:39:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:30 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:30 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:30 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d9bb80fccf8faf0a14ffae45e5e80b8d748c1ef90487840e742e4965fc06`  
		Last Modified: Mon, 06 Jul 2026 21:39:57 GMT  
		Size: 16.1 MB (16071437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ea959f33ff9f5bb375540b7e4ee0619292c75a7bb92370002c5681ca11f042`  
		Last Modified: Mon, 06 Jul 2026 21:40:02 GMT  
		Size: 225.1 MB (225078642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9529654872e65e0bb96cc0e029170d50edbcebecab3c790025176b1fa2d1993d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c613e53fbdcc2890a98b1a8a12888008dd36cb3a72b88fb9bbad6199d055645`

```dockerfile
```

-	Layers:
	-	`sha256:bc66881e7ca8f3891647264d8f0e56ce268401f49c37a8adc92b63eb4836d997`  
		Last Modified: Mon, 06 Jul 2026 21:39:56 GMT  
		Size: 8.7 MB (8703048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4dd2bee46c35e87ed00ca6acd88ddd583ff9ba86eebc8bfa7d57767edb1ffcd`  
		Last Modified: Mon, 06 Jul 2026 21:39:56 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
