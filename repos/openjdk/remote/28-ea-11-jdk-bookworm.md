## `openjdk:28-ea-11-jdk-bookworm`

```console
$ docker pull openjdk@sha256:674bb55d56704ce65ccc274cff700e56d9ebebcedfd8908d08815f13c736ef07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-11-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8b816168b888b1fe7ec452f517c5e805047856bd53f26441896472b3ce5d88c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.6 MB (396556449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091f00e939476ce6cb7b2e07cfa9e0678713f48a62e9c7a5e59de10680dda953`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 02:24:21 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:24:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:24:21 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 02:24:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:24:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25afb5d3d0e5b2e8c51834ad246600368634126b45aa633936f81afb0992f902`  
		Last Modified: Tue, 25 Aug 2026 02:24:48 GMT  
		Size: 16.9 MB (16949408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd42a73c9f18daabad542c6cf4843966dabaa994d180317a87bdafbd1a3ee940`  
		Last Modified: Tue, 25 Aug 2026 02:24:52 GMT  
		Size: 242.6 MB (242640367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:7427e0e85bd78b70ae2704dd6e06bc13289cbda72ff8f28d31c91a960586ba08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd9205c3a4490b8cf701e3612db986f3476ef031182f295a1029026ce31d72`

```dockerfile
```

-	Layers:
	-	`sha256:a96145297968758a0bc88921cfb6fc13c507817bb01670fb2d0033a0d018503a`  
		Last Modified: Tue, 25 Aug 2026 02:24:47 GMT  
		Size: 8.7 MB (8674241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a1b7d5b91106ba111130530cd83fa05faee9aa276e413cc00c97fa11cc7e6f`  
		Last Modified: Tue, 25 Aug 2026 02:24:47 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c7103242b1f71e5684a01d312628fac314a9ab3d5be731d4ebc8a9e1566024a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (394978547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ff4d9e24127cf39285d8dd2848d882cfa773a378ff8fee5aa5be83fc5af6c7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 02:26:43 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:26:43 GMT
ENV JAVA_VERSION=28-ea+11
# Tue, 25 Aug 2026 02:26:43 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:26:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3980a16d1c80fbf9f71c16f615883eb61f906ac68d3260d8053cb798ab66b065`  
		Last Modified: Tue, 25 Aug 2026 02:27:11 GMT  
		Size: 17.7 MB (17733601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bcfc20c16281556d6ef09ba32c4aecec0de66dafe89847436054802716807`  
		Last Modified: Tue, 25 Aug 2026 02:27:15 GMT  
		Size: 240.7 MB (240732459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:3c288db995c3ab2161d90cbb6d486b21379df81976f1fe2e6c20938e764d36da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115675260eee223cfc272fa2be70fe8e74a9534532c6ef92bfb50f271f10289b`

```dockerfile
```

-	Layers:
	-	`sha256:27284546be7dd52a198acb606990d2a5fbf06b86b7fb7f9347c2e6981e2757b5`  
		Last Modified: Tue, 25 Aug 2026 02:27:11 GMT  
		Size: 8.8 MB (8811086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ebcd11021a0a6ae33db202dc22a2f8e779f67ad6721700770c43a2bcfb079bd`  
		Last Modified: Tue, 25 Aug 2026 02:27:10 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
