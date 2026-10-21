## `openjdk:28-ea-20-slim-bookworm`

```console
$ docker pull openjdk@sha256:fd5e75b590aa3a24d104e1e8d026a65a74251f4add7183399f019a9c0af7105b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:e753031afbd93a8c89160d843571c9d57333828879c69a2d4e0ee5c29fb07502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275097406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ff4c829a0debea94da88505ef9dd97fe374466dc92248ef83c0febcd44`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:52 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 00:50:52 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:50:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:50:52 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 00:50:52 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 00:50:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14477f31ca2ad90a7292c3c07c92a2945966fec38fe874d6db81f8f98e3712b4`  
		Last Modified: Wed, 21 Oct 2026 00:51:14 GMT  
		Size: 3.9 MB (3852173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab959f5c1bdbda53c53bfbf23f58027af3924dbec19a08fc823c48954b1b2ba`  
		Last Modified: Wed, 21 Oct 2026 00:51:19 GMT  
		Size: 243.0 MB (242997298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:bf732bb9cfecdca256afa369dfeec86c14858d0a6d4f4c55e8dff3b408062462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124f1f2aed220ee6b3dd2bc8b55c93e333781b97aa39c5cde737e30552272642`

```dockerfile
```

-	Layers:
	-	`sha256:9bf7bbedce62aede1f699454b625c579926ee3705c9a99c127663073047518d9`  
		Last Modified: Wed, 21 Oct 2026 00:51:14 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:389057ff3045c4d6838ddeeb563fef5eba0b03f10a08a993047da550e2cd131d`  
		Last Modified: Wed, 21 Oct 2026 00:51:14 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1490767389c491f1253aab7aa8d0d6975961eb67dda311f3014fc56c18d0b6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272845896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a572767f56d9586cd521a8f8237c88094360391bd61b4503b902bb04a3862dc9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:53:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 00:53:57 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:53:57 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:53:57 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 00:53:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 00:53:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb9c472aa644d2854b86bf4ae3a1bbac3cfb4419017a82a1f880b838a3971a0`  
		Last Modified: Wed, 21 Oct 2026 00:54:22 GMT  
		Size: 3.7 MB (3666547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e5eca26222cc828ec204fcccf3a03933e3636f0101db0eaf099124660cd3e`  
		Last Modified: Wed, 21 Oct 2026 00:54:27 GMT  
		Size: 241.0 MB (241040924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:925ad71f8073bf49bfad278dfae4d0d6269519c5a23c24631c4334426af63c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16106db57d6df15f865e06a6ee45b4f2c5e0028275d489151291bb02de5a7374`

```dockerfile
```

-	Layers:
	-	`sha256:945597c12674a917ac2f1a602e635dcdd15c151f5149f4b6a55fd509ecde0fc5`  
		Last Modified: Wed, 21 Oct 2026 00:54:22 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc427eb1b651b5771e91b63bd7ea487bdd01da7a786b319c80a3ac38963d3f0b`  
		Last Modified: Wed, 21 Oct 2026 00:54:22 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
