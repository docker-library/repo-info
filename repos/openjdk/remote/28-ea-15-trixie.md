## `openjdk:28-ea-15-trixie`

```console
$ docker pull openjdk@sha256:5af02454f338570753d35d496487a49e25a376c982f4d0bb9dae11ea9f910467
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-15-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:af1802a0643daa2e9051bb188fba94ee37660fc9de10311bcb4bc5b8d473c14d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401707343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119bbeea290095ffc411855872984d362bbb29c54d78245b405bd72bfbf5f0b0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:38:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:38:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:38:14 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:14 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:14 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:14 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:14 GMT
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
	-	`sha256:a9c4fa9eb3f99e16a5c55844f8436be70765df44090d8d9a911c6a9a6adce356`  
		Last Modified: Tue, 15 Sep 2026 21:38:43 GMT  
		Size: 16.1 MB (16067441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acdb08e1a4a9cb07d3f8e7e81296968d81ae8320eb8b04f46ea93888c2623d8`  
		Last Modified: Tue, 15 Sep 2026 21:38:47 GMT  
		Size: 242.9 MB (242862410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:547c7e9dae471d175c0e79f0c4a51fde76e70befa40aac6dab9f66b3470cabd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8534358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58d7569fefe479fb56d891691629aa827dea749ec38d9677df9137205af9e0c`

```dockerfile
```

-	Layers:
	-	`sha256:5609b99638c7fbcb915dab979278e4423f7e8c785e1838385631f2c2b350bbb8`  
		Last Modified: Tue, 15 Sep 2026 21:38:42 GMT  
		Size: 8.5 MB (8516445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c73a7c39cfd196b09493c5ace9b2ae92d3c68ce33c026d48b129f22d5637de`  
		Last Modified: Tue, 15 Sep 2026 21:38:42 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-15-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:87b906d7f8169e2e63d37b4167ada41f5c87baa6e4fd5764704cf001421a5856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.3 MB (399331615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd04d530608e95ea6b0ecc345ce0eb8274d4e9e2483ece6b7e160973cbf9e62`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:44:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:44:27 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:44:27 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:27 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:27 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:27 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:27 GMT
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
	-	`sha256:18708e731c4bb654a17a8e058b5d694cbd490aafcc8e36acaeeef5fdd113016a`  
		Last Modified: Tue, 15 Sep 2026 21:44:56 GMT  
		Size: 16.1 MB (16071245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cf89476b5a2f8cce4ea5a5749d4645bcd2fcab922141b09892b21dcaefd7ea`  
		Last Modified: Tue, 15 Sep 2026 21:45:00 GMT  
		Size: 240.9 MB (240923070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:f9bb97eb432d9dfc168944eb4990bc897a28d9782e14666f0edbcaad7c2e6520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8728630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddb9fca33de951fd0606b261a869a4ca1c6f236938b9caecee8fe4584305fa2`

```dockerfile
```

-	Layers:
	-	`sha256:22886ac8094b1c897bcf867024965f4aeb8df7df81657863ff385aca5cad86f2`  
		Last Modified: Tue, 15 Sep 2026 21:44:55 GMT  
		Size: 8.7 MB (8710598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d64336bc402e9eaff4c8ff922dd4400942fe583d8c4b057becbe0e30d896797`  
		Last Modified: Tue, 15 Sep 2026 21:44:55 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
