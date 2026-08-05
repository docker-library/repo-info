## `openjdk:28-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:e0ed548471c58b2efceac527721f957af9d34f29e38b63f6210558cc4213b2f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:c9ae73c5c0b0d1ce14207658b83f1b60cc828b8b295b1cb692b909466b55dd41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253731318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b6658d3c9263e22bdbafa38e35f2192a5c70991524149a5d87a740a238a2af`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:49:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 00:49:57 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:49:57 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 00:49:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:49:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583f0939384823e7102a00c604232fad7cde33f3fdbe7c59ebafefa53f140445`  
		Last Modified: Wed, 05 Aug 2026 00:50:18 GMT  
		Size: 4.0 MB (4032963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f0e47569b974d1fc4273cb6004d2717d0225645e866402aaad48d39c4472fa`  
		Last Modified: Wed, 05 Aug 2026 00:50:22 GMT  
		Size: 221.5 MB (221465765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:04a168eda6d3cc924ded4694acdc925fdcaa594123547f6a1a16350b462d5d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc297023dd37cd378592e6887ae1b188fbec44e0754e26b8eaf60ca0b4711c0`

```dockerfile
```

-	Layers:
	-	`sha256:8102b65e7d8f3eebe9c056272b282f39be85aad8cb058f5de7dca002cf220d3b`  
		Last Modified: Wed, 05 Aug 2026 00:50:18 GMT  
		Size: 2.6 MB (2647318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:993e644762fc296b505411fbff73f23e6e5dcd01738814b72fc96bc127b07acd`  
		Last Modified: Wed, 05 Aug 2026 00:50:18 GMT  
		Size: 16.9 KB (16858 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6c840535db355b44c5fee1a4a1d3e34fd481de1b9e8dc86e28483a3b3169083f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251501034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01ed02d55e4bd39385541f8d270eb4a4897c5ab367b385ea189b1f0a6101723`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:52:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:52:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 00:52:29 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:52:29 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:52:29 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 00:52:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:52:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8ee217090a1996efbee3d68651c48a28685c45bae6a52dceb9f73e79bde661`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 3.9 MB (3852840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9802cc723843b4ce9a3965909a2df0f53948e356233cd1e01dbc082c3cf6d3bd`  
		Last Modified: Wed, 05 Aug 2026 00:52:54 GMT  
		Size: 219.5 MB (219530992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8d8fd2aee98f0881f38915ca0dfe798eaa09acca8e13e7f0be954519ca94b728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a1ff1dce88c90920b747544d458952ad09c687454cf92a63aa9bc0f600892a`

```dockerfile
```

-	Layers:
	-	`sha256:e4b9843bab910642ea3fa6f8259ffdcb8e91b5591ef796cc8700a8b504fd34e9`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 2.6 MB (2646952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99b7c78a9f34d3b729c4ec9ced3634264b50064f4e3df0a05b01b92997fa76e9`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 17.0 KB (16977 bytes)  
		MIME: application/vnd.in-toto+json
