## `openjdk:28-ea-bookworm`

```console
$ docker pull openjdk@sha256:88b1f0550f52f6c29b7ef6ebef23a50c9fd7d5e59a99e22bb6a58c44bb6e7ad0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:005c2957146f4cc3d97bb28c5aedd68e4368df36fec781d47c39afadd23aa47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.6 MB (396557995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d67d5fdf282138edf169c371bb950e5c7ea215df53ecd713577221def7e622f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:28:37 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:28:37 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:28:37 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:28:37 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:28:37 GMT
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
	-	`sha256:c10bb12fece7d4efdf22a6604e8629e5f702957c339556ff39ca170e0de58245`  
		Last Modified: Mon, 31 Aug 2026 19:29:03 GMT  
		Size: 16.9 MB (16949350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef14dad5351940c0aaeed6000cf3247cc81a31b211a81b4d07c25528d3a0e4d`  
		Last Modified: Mon, 31 Aug 2026 19:29:08 GMT  
		Size: 242.6 MB (242641971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:6fa40681e1d43b5a86da3cd9961f689487c0c40df24d50c05288555b1acad160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a6000364bef2a1725d16abe615ccbbd1480333859a85374419edeea0ff78a0`

```dockerfile
```

-	Layers:
	-	`sha256:44d7dffc419ed66ebbd7af9a1a50db97787c60552cab0d0ef8b64d5c75445b35`  
		Last Modified: Mon, 31 Aug 2026 19:29:03 GMT  
		Size: 8.7 MB (8674241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4762ce368a49703dd768810b0c6c3b9c37eb37065a6269f53da112dced754e2`  
		Last Modified: Mon, 31 Aug 2026 19:29:02 GMT  
		Size: 17.9 KB (17938 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a0a7fb4108c25cb35bd1bba546ea90bbb7a37ff0e663d41fe1f0817da5e69dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (394969143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff66cf87494acb834836a8f78d9daa0e62069c830310b547d0570579e3861dd9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:45:35 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:45:35 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:45:35 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:45:35 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:45:35 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:45:35 GMT
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
	-	`sha256:63442b90cdb0839cb82065fda70f298dc6cd9639d80a4db16ddd291582666192`  
		Last Modified: Mon, 31 Aug 2026 19:46:03 GMT  
		Size: 17.7 MB (17733533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faea46614de4fc5f41d2a81764a348fb67cab468e00345f693f7193d6778b244`  
		Last Modified: Mon, 31 Aug 2026 19:46:09 GMT  
		Size: 240.7 MB (240723123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8e57a793a40c082748d4de92706d42085ce28fedb0714ffe6c9e6ad227b62fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7301cdc6507a090520fde1e90bd3532348e0b9edd2a3b91318cfbbd44fb149b0`

```dockerfile
```

-	Layers:
	-	`sha256:0841fa59a716bf4a9631a9283097ef81bf9775a57b558d32148d082c29725bf9`  
		Last Modified: Mon, 31 Aug 2026 19:46:03 GMT  
		Size: 8.8 MB (8811086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f2c794142d557441c3ce025f2529ba70101255519168bb7d49af1e964032f61`  
		Last Modified: Mon, 31 Aug 2026 19:46:02 GMT  
		Size: 18.1 KB (18055 bytes)  
		MIME: application/vnd.in-toto+json
