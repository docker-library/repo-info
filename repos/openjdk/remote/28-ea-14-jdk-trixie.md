## `openjdk:28-ea-14-jdk-trixie`

```console
$ docker pull openjdk@sha256:c1d55229a2b665d57efabb3b0f55b9a101176605517d902b04e9ee7285f04126
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-14-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:89cc2173855a5afda6f96f53c1d3d0b679f50dc2da31642ec03d6a98142547b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401520220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62122bb9064d14040b5fb62c068ff62bd4fa7bb975fa4fda7036680fbf812ec1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 04 Sep 2026 21:09:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:40 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:40 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:40 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eefb58d542a44143d46790f412569f94b88cd0ad921244acddcfcec9ddae52`  
		Last Modified: Fri, 04 Sep 2026 21:10:07 GMT  
		Size: 16.1 MB (16067395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83220121a92c78a64e0bb416c6e347c45e2dc1dc1d0895b992eaf620a4f99b92`  
		Last Modified: Fri, 04 Sep 2026 21:10:11 GMT  
		Size: 242.7 MB (242675333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:69fe4ad6ffb4cda8ddadc25c75155e45b3e40bda9f2cbc4275e136c2be649352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8533720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f124ae916534b592ebf6061031e57aa2277ee4f1925d5484c518598ad0d54601`

```dockerfile
```

-	Layers:
	-	`sha256:d1da41a77159f760a5b48953f00e8bdf3474e92168fcfbcbd4fef0ba3e9a1045`  
		Last Modified: Fri, 04 Sep 2026 21:10:06 GMT  
		Size: 8.5 MB (8515807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5ff7ebbc0442a4ea08456f46cdbfb2308cfac9d95fd2b8aaa6b812d1096ad3b`  
		Last Modified: Fri, 04 Sep 2026 21:10:05 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:307dc5dd7cc5ded5ea1f7f95fab40ce0c9a1fdb261564d1ed68b99865973b641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.2 MB (399153460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f2099524526b5de717fadf64c2d0e5327a8a56e7d3a58300585cd88456e089`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 04 Sep 2026 21:08:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:08:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:08:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:08:19 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:08:19 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:08:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:08:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e525953dce89af4d1244281ea000d8d5c1eeb08fdf5ab937a1cf8ec9fef505`  
		Last Modified: Fri, 04 Sep 2026 21:08:47 GMT  
		Size: 16.1 MB (16071254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38660bb2cb8a51ab51823d6e7f35dfcc579a1473c3ac6467e051908dfb50e7d2`  
		Last Modified: Fri, 04 Sep 2026 21:08:51 GMT  
		Size: 240.7 MB (240744906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:219e9ff42263b88513d6d636ae81f256759ed6af808f81f49eda0bdacee3a2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8727992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c75e8fd2dde31a1f50a7741e70bdd176737dc6d1fb2364e9a00c09ca1b74d1`

```dockerfile
```

-	Layers:
	-	`sha256:84db362cd4f904626dcfcd50765e3ca7684232b21905fc60b14a0704368268a2`  
		Last Modified: Fri, 04 Sep 2026 21:08:47 GMT  
		Size: 8.7 MB (8709960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c9be56c6ee258be2bd94dcf65ac96f4558a90194ec48ebe4b2a8f6097e7014`  
		Last Modified: Fri, 04 Sep 2026 21:08:47 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
