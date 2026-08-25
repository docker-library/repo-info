## `openjdk:27-rc-jdk-trixie`

```console
$ docker pull openjdk@sha256:9220299fa776357cb529280c0a91557851de99f34ee5c97f83a3eeb4feb0d8df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:62ad3c9ab7b196657964bb18ddff12902045513fa6c313bc1d7c762ef01533c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385988824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8859855ef53136fa026cb0862f8f45e689755e6422aaca4658109be275205f29`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:23:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:23:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 02:23:29 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:23:29 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:23:29 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 02:23:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:23:29 GMT
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
	-	`sha256:6f4b8f4275efbf008821a1d20763de9347d7784fdf85955e14c74acfbb27a285`  
		Last Modified: Tue, 25 Aug 2026 02:23:53 GMT  
		Size: 16.1 MB (16067242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd90b3af0264deed0e13c9d1f27821390c0f3173ac5d10422c08c205d1a7332`  
		Last Modified: Tue, 25 Aug 2026 02:23:57 GMT  
		Size: 227.1 MB (227144090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:e953459d66c5b60336d559ff80b7ed2367a78997b861224e9a93208aa036ceef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8529910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00081ddf69b11e8495f82c9974ea8f59a2560dcbd7061861cad28adf507f94fb`

```dockerfile
```

-	Layers:
	-	`sha256:d8ce304521f0497e2ac305c5c0709b685d148e3c5482dcb015ce2ee67e58caf1`  
		Last Modified: Tue, 25 Aug 2026 02:23:53 GMT  
		Size: 8.5 MB (8512577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d493b47c93cc494892d703c90df4bdf9070f373c4c8e20ea2df8cbab4786f25b`  
		Last Modified: Tue, 25 Aug 2026 02:23:52 GMT  
		Size: 17.3 KB (17333 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:be2fc1182a07e48ca15cf39ffeaa2de8d8d25a6d75f9c13a8c34117c4587669e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383518834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa994fda1556dc30db4a6c96e8b8e3bc8c35d1c1352927ed2bfc00b80d2a0765`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:25:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:00 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 02:26:00 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:26:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:26:00 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 02:26:00 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:26:00 GMT
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
	-	`sha256:172c9b72d5be2c3843d798a0c7d60dd96ff4397e8ab60798769e9428d275b418`  
		Last Modified: Tue, 25 Aug 2026 02:26:25 GMT  
		Size: 16.1 MB (16071281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d5a816bc8d405eba3b3106fc6bcbf39edf26ee3f33f5d2f4924a0c44e9293b`  
		Last Modified: Tue, 25 Aug 2026 02:26:29 GMT  
		Size: 225.1 MB (225110253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:a67e7d78f52f6cd5928d4f3510b6b3afcd46a1c90ef6bacd162ae338b8e71ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8724134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df140bd135792fd72166e39730c1484c5bcc705d82bd66cac44811e05e34bc7f`

```dockerfile
```

-	Layers:
	-	`sha256:0b65aec50230ed00ba8dafa25d1ba520856c4383b263f67cf050c265fb78d60e`  
		Last Modified: Tue, 25 Aug 2026 02:26:25 GMT  
		Size: 8.7 MB (8706706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:264edab774e0ca99df9c08d9e84bf78d803a9fd9db640b2b93b374451a01688d`  
		Last Modified: Tue, 25 Aug 2026 02:26:24 GMT  
		Size: 17.4 KB (17428 bytes)  
		MIME: application/vnd.in-toto+json
