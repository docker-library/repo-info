## `openjdk:28-ea-jdk-bookworm`

```console
$ docker pull openjdk@sha256:fe78f4e5b72f67bed50c9702040b1ab57a8ee0098fc9f3560935449495c37778
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:043cadc72d7eead1395e6c7c69a66298ed21667dbcbc9f832c8ca6eac35f26ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.3 MB (375309215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265a23a4eb1bececb7ef4b8a77d077f693a2d5fcf224cebc5b9ab237cb494601`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 02:22:29 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:22:29 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:22:29 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 02:22:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:22:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab7fbb3f829aa9f6bc3a7dece6146f80aba9b0e8c2ec8452f5111c01f34c44`  
		Last Modified: Wed, 05 Aug 2026 02:22:51 GMT  
		Size: 16.9 MB (16947567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae0f2188dd39fdcbd1779c6826b333233330e72ccc5f1d94112bc6924d23e4d`  
		Last Modified: Wed, 05 Aug 2026 02:22:55 GMT  
		Size: 221.4 MB (221412151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4a1ac51684ee4a2189acbca9a70c2bd1f542915a2f4e83ec413fcaec2b20f18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8f3086bc2b6d2e7710bfe5b082b86f973ba408a656b545a4d2b6b6d9134d39`

```dockerfile
```

-	Layers:
	-	`sha256:044bc175e0be463a46d604fc034e96ae5afda0c89b93822c3acb784a29776729`  
		Last Modified: Wed, 05 Aug 2026 02:22:50 GMT  
		Size: 8.7 MB (8666402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ceba4cd01eda97d0c8e4c128309ecbd9b34a69290097b93b6975ca3cca82ee0`  
		Last Modified: Wed, 05 Aug 2026 02:22:50 GMT  
		Size: 17.9 KB (17922 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7d2538474e7c69bf238b81c1eb7135941238397de87ffe921afe99e95b84aea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.7 MB (373710834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e236430b813dfae3d31bf9c506be235f2094b9b4db2001da58bd1ad04bc7fe2c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:23:10 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 02:23:10 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:23:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:23:10 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 02:23:10 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:23:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcd89e33bae6c8bf76359251a6a4655fdaa216d0c0ef15d2ea7548cf5acc38b`  
		Last Modified: Wed, 05 Aug 2026 02:23:37 GMT  
		Size: 17.7 MB (17730890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0188ae016062ffdae9af45b7ac95375152387097dc259c1d833e72b07d625e2`  
		Last Modified: Wed, 05 Aug 2026 02:23:41 GMT  
		Size: 219.5 MB (219485728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:1aad5053830f06740c4473207acc273182c8e648788fcf157ed77b13e86e92fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd13f8db99dfde9a1b9beee1448f899dd9de4b494ba9ede0ef11ecffcf220d9b`

```dockerfile
```

-	Layers:
	-	`sha256:ffb9c3dc5c5b2b9ddf8f0d44ba1818018b11d7cf5d0d280880fb9300344bbb50`  
		Last Modified: Wed, 05 Aug 2026 02:23:36 GMT  
		Size: 8.8 MB (8803247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6397d73bd811d69947bf1e3969c771938426d67c7a1e253ec9412362fbfc98a`  
		Last Modified: Wed, 05 Aug 2026 02:23:36 GMT  
		Size: 18.0 KB (18041 bytes)  
		MIME: application/vnd.in-toto+json
