## `openjdk:28-ea-slim-trixie`

```console
$ docker pull openjdk@sha256:8fd9e94c8d9e6c0830e40b94bde52c04d9475e1df091442c4173576042bdd5e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:3241a928a9349a25cb262c2984c43aec7d2a9a15bb988b78fcd5450539c15a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278187490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b644073c89fb2b217b08a2371f28569661b9ae54cfb3efb84a82b935fcb547`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 23:38:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:38:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:38:50 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:38:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:38:50 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:38:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:38:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95c8e8e0a3014a0d743a7a1a707fd9189f66830fada68af974135a4c68cd272`  
		Last Modified: Fri, 02 Oct 2026 23:39:10 GMT  
		Size: 5.3 MB (5343466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c458b7d2777c4787724df40c9e585450f3a8cc6cc3f742a1507d6663a19c44`  
		Last Modified: Fri, 02 Oct 2026 23:39:18 GMT  
		Size: 243.0 MB (243013606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:1a701d64f877fa3addfa3638cdce900b38ae7a5568557e63082451e7e89a4138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce957a302995c9d987bad99cf1397569648d316a95b75158b951b3c8c2f34bd3`

```dockerfile
```

-	Layers:
	-	`sha256:51829457079529585530abfc4cdae9f09d0a1c586b98789653e06998b73bde3a`  
		Last Modified: Fri, 02 Oct 2026 23:39:10 GMT  
		Size: 2.3 MB (2285558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f7b6db1ea5219ffb8902047e2bef1dc9fb45988fa596bddc6f02b455e10cec1`  
		Last Modified: Fri, 02 Oct 2026 23:39:10 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:9923d528e7c3d004012bc660541400af660fc6aa1ea37909cce4ed4e8a5c25d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276918834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802b6f55c913d827d319331dad9cc275079bac37e9af8f988f829fb1160f151f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 23:38:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:38:56 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 02 Oct 2026 23:38:56 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:38:56 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:38:56 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:38:56 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:38:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2764897996ff20bb72040ea9361d1dd4c57a63761a1d60c05393561b8b1b3b`  
		Last Modified: Fri, 02 Oct 2026 23:39:20 GMT  
		Size: 5.7 MB (5652883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db401c05ee0201623ec8c42fd8ab59fa323676fd489216a4c0525a3c3e3ee726`  
		Last Modified: Fri, 02 Oct 2026 23:39:24 GMT  
		Size: 241.1 MB (241076260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:f9a6ef1274bd58d68071698c1b83c7c7f65cb2a9468218fb34d662b4a9d5cfd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70ffbd868d9d23ddcad37fb8b33bebe042f8f03d80f19e022a6e70e207f5511`

```dockerfile
```

-	Layers:
	-	`sha256:6ed1b240d9c8ba08b8fd9f733441cb4d0c1595a3b84ffb0c1d83ffca2df0a911`  
		Last Modified: Fri, 02 Oct 2026 23:39:20 GMT  
		Size: 2.3 MB (2285236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea5cdf6e89c4c7b6e0a7919926acaa9aac889896f8f1cdfd4861416caa6c74b`  
		Last Modified: Fri, 02 Oct 2026 23:39:19 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
