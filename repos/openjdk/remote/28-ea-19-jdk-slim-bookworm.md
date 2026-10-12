## `openjdk:28-ea-19-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:1c8a3c415b8592dd3dc126bac66d51dc5757475b71a64bd7ce7cb66e084e76de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-19-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:db205127c670eebc1cb1d6c39fc585887de4127486471b9414401425c48f92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275028745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7296d6a119e5b7350ed1d05f9292371851fbfa0b833d07b917e1468167bacdd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 22:56:29 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:29 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9d361273c6d88e51dc9f0de2550f7419f7df69d1421ae1e9593722a2c463b3`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 3.9 MB (3853165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccef9b7db3aac6a9360db13b365c2d2cb645c8a5e368f80c35610b3402e49456`  
		Last Modified: Mon, 12 Oct 2026 22:56:54 GMT  
		Size: 242.9 MB (242926257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:27dabc9db1b1044d20b44cb639ec3c4394594ae993a710a652a7207dd1c46a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f11bcbaab36c4ffc738627718e72d3993789be81c30c8ef90673da7f7200967`

```dockerfile
```

-	Layers:
	-	`sha256:2b352a8492d5bc1efc2ec3a2e5718dd811f533d9f7f1d2567836425170bcd293`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 2.7 MB (2655777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe73e058734f0d225295f1443f0dc6866aae6d8be8c7c46f1fb25faa0f2d9f01`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-19-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1105f21a3a54617498dc10c33a9cf2468632f17c2db4885e2357b88fc80a2ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272766707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d29a37c46f5769967be87cb579e61a6c0db782cd80dd6bb864f105b089ff0a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 23:05:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 23:05:50 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:50 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:50 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c28816bd670e49bb5aa424cf029e67b4e76a082dfa18abb7cf8e54baa8df2d`  
		Last Modified: Mon, 12 Oct 2026 23:06:13 GMT  
		Size: 3.7 MB (3668798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9ff625e928fc9de099d7fab5a509f00555521da1203e491623188d31ee570c`  
		Last Modified: Mon, 12 Oct 2026 23:06:18 GMT  
		Size: 241.0 MB (240960730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d4f30ab6afbdcb64fb9cb2ad1855de6a8d29190c143fd1bb5756d0b6902c1213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9524c90f1d7f0fb212a995c9951f8d1d1924eb28fc19db2daaf98496b64ccec`

```dockerfile
```

-	Layers:
	-	`sha256:9c284d0f990222c0b49b9cfa6cf39e977f78c04d0f309bd86bc0caab15a1cde2`  
		Last Modified: Mon, 12 Oct 2026 23:06:13 GMT  
		Size: 2.7 MB (2655411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d92c26098e6cf90690004435f98fbd119ed8545fee753ff000e69576256ade6`  
		Last Modified: Mon, 12 Oct 2026 23:06:13 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
