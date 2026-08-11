## `openjdk:28-ea-10-trixie`

```console
$ docker pull openjdk@sha256:1b92d439fa6b6d7b2e5dd5f1bd2b6f00346ff1a0ad020ad4f260480541b39c8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-10-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:4fb11e2ea66e4e41fdd2b9f07097fa765f86f0c35b84cf9ada637ab355ec73a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.4 MB (401440891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b878332a92c69bb13a376bf9a3b0fb069039e521751681d7694132539b932a6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:34:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:26 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:26 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:26 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:26 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c645ce369ca3d762b645fb616fdeedbd80957f560c56919ca551ac5e1e4c255`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 16.1 MB (16066062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7834e0b1c278fb5e9e82de8b90e55bf849652d706c470dd2d346c9151bb40`  
		Last Modified: Mon, 10 Aug 2026 23:34:55 GMT  
		Size: 242.6 MB (242625879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:93a1f30ea041faa77a4cfd868579caf786a6beaf5d756af0b73a628020ac02f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8529502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c53ca1c330159a990b46a7d6582e945dbb9e629fd2a49af1cbd12601454b38d`

```dockerfile
```

-	Layers:
	-	`sha256:23e41822a06a3d5a491e150f449afc4f1337b4b4cfc561d3956f81f9af3f78fd`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 8.5 MB (8511591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c08b8ea82720dc18ba38d847a9950a329b2654c6f481618964853447880a979`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 17.9 KB (17911 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-10-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5cec3de06ab24984638c3e5ebd748695e85b54e5bccfec17abc3ec1be919eb33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399082931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b80aef63d69b8b9577fecb5c451d9e99be6a2390a650a4db9edfb3964364f4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:34:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:33 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:33 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:33 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:33 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:33 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18f94a4139e96041a49f9128bf5c25998288d7373cc23de27136e28e2083ce8`  
		Last Modified: Mon, 10 Aug 2026 23:35:01 GMT  
		Size: 16.1 MB (16071430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efee9080a598605e5bbb315f4d69d41e5d34d1b11c5e1cdda7bed472742d9f8a`  
		Last Modified: Mon, 10 Aug 2026 23:35:06 GMT  
		Size: 240.7 MB (240710599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:0c60ae78198ea7c1675c771bec42abd9b558f8565ab8ab5de10ab6f7c90d982f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8723775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e25b2652416080bef880484473467f867b6d582adf6fdcb630c02c49b1c064`

```dockerfile
```

-	Layers:
	-	`sha256:8eaf7ae02a9bd3416404c8b7ea215417981c75ac3618b98962bf95507e32c658`  
		Last Modified: Mon, 10 Aug 2026 23:35:01 GMT  
		Size: 8.7 MB (8705744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431dea655d7dcb798b5f34b45030995c56b21fa0a9f267fad420d4df5e61797`  
		Last Modified: Mon, 10 Aug 2026 23:35:00 GMT  
		Size: 18.0 KB (18031 bytes)  
		MIME: application/vnd.in-toto+json
