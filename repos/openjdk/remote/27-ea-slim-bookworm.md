## `openjdk:27-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:33ecd7ff63b8125ecace7d30cf15eb02da7398741b5a48fc0ca11ab5897fda65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:b680b9f89dfe254d04b5e458f8793d6d2aa7d9d5d0bf5e7a33e77d597dce0e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259417700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c886347d9e4323aa58ca390f2534a3ad8558bfabe496533d1fb59cbdd85691d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:39:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:25 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:25 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:25 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:25 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4d115aba7fe6acbccd469e4bb93d120a2a995ecd78dc9a544dedc047d79d42`  
		Last Modified: Mon, 06 Jul 2026 21:39:45 GMT  
		Size: 4.0 MB (4032894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c340f60fb7cbf6ab29f5c4301e8133772a798a3d2fca11504508d5a53d15c9`  
		Last Modified: Mon, 06 Jul 2026 21:39:50 GMT  
		Size: 227.1 MB (227147167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:b4faae4a1f3381a41c48004027875a2987768bc2d283f2e96b6acdc3d24de340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba0daa3b5090c63bf932e3bd235a22b542e66542b51c3418e8ccbec70edb783`

```dockerfile
```

-	Layers:
	-	`sha256:58b0e3201354bd09de61711ad1ec312fa5784d6bebb1ce5f4cb2ba65cc52adb9`  
		Last Modified: Mon, 06 Jul 2026 21:39:45 GMT  
		Size: 2.6 MB (2647290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bae2165761e1155f98e46d8abcc5188ce90bca804aa210b87bd8cc453aaa35f`  
		Last Modified: Mon, 06 Jul 2026 21:39:45 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e57af16807283cfba21ab3bd79d0157345b911905d03ecb83eba89426a737a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257100830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:184e6824830999ae9b1b5352fbd1e50946e8aa27ce5046b47c478027586efd41`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:39:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:39:28 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 06 Jul 2026 21:39:28 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:28 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:28 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:28 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690e3e11c51d27eb79ec8ab85a909384d59f17ef7a6b3995a46d313af4e4d957`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 3.9 MB (3852859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c96402e63f3d6540af5ebbe98aedad6c96e828f4e01b19a9d8165b0a3dfc66`  
		Last Modified: Mon, 06 Jul 2026 21:39:53 GMT  
		Size: 225.1 MB (225125553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ee2d5e1769d37ff71a9b89fd245d4bafada6b6772957cde3d9454e9a83951560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb08aace7c5a30c7bb7bda5fca733dae41e29f4dfd85f38af191235cc32a939`

```dockerfile
```

-	Layers:
	-	`sha256:edfdd4a61473ec0852586830a116849a72e7eff5d7ff7f0cf3892bca2966500b`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 2.6 MB (2646924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaffa7dafceb05c696d2e83ff21dd4f1443d2cbb9b5c8ab65e787804e466e6b6`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
