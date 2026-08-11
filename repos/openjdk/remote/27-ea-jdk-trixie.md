## `openjdk:27-ea-jdk-trixie`

```console
$ docker pull openjdk@sha256:a4f2d413f4bfaa1f26d7e8c09f5f5619a58fa01b3fe660235be6b1453778b6e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:04c8bc09ef401e3e14ad315c7658561a2ab26ff618dce74330973738b871dcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385962291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1af0a6618a0495b2d1b8bc11042ba4a611cf196cff6f0881ead23609af1410`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:33:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:42 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:42 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:42 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:42 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:42 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:42 GMT
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
	-	`sha256:a12d572648c1a2e30f357ef6b712a30e8bfe685c9373331be2ccb1467fc503f1`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 16.1 MB (16066032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4af59a732ab8fb3fda0c8d54a64ecd5dbba719ffd9385328aa92635557b5a1`  
		Last Modified: Mon, 10 Aug 2026 23:34:10 GMT  
		Size: 227.1 MB (227147309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:650516fd9c0281957eaad70e6d56e8a8891d677e10f162fcf248ea583ccfe774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ef24a3ff36ed72460efcc7148cb756575a4c717884904f6a28b32c8f6c0963`

```dockerfile
```

-	Layers:
	-	`sha256:866e9c17906a76eb0ef3043c0ab846cb5849435ea520a2bb77b78e899f21f051`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 8.5 MB (8509017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90ba7fc48bc1ee952a7868f21c9c8f0c1ee357ce55a5af3f248640369f18e0f`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:85866a89ed41386a69ef627095bd2de62ca1dbf20dcf400aebf5c2434dc89538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383481621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6aa1b4cc1d7d1dba8cf3290ef8c98331b9af4734c27d3a3146232dc92aea2b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:40 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:40 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:40 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:40 GMT
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
	-	`sha256:98c4965790d804c6f4a8a669738932adc672fb2a98f0cf9370fb440e01af0802`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 16.1 MB (16071440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd09563a5f5ad77e28d5c9ca2d46f53264681707bd1bed9f2aa629c3bf86174b`  
		Last Modified: Mon, 10 Aug 2026 23:34:09 GMT  
		Size: 225.1 MB (225109279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:085e6ba5d17e397a1645773c4fc46e926beb8332f4bdc36e8a279ace4b5d01a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0857b2918c931cb6c24156e82541e2ff050512212fe0e3909ef4db4a0032c04`

```dockerfile
```

-	Layers:
	-	`sha256:fd53400e2336192cb7eb6a6cdea00cf9757950d96ca9f46d1f728031994133a4`  
		Last Modified: Mon, 10 Aug 2026 23:34:05 GMT  
		Size: 8.7 MB (8703170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:998a5a819f53328a7c8227f9ba8a45ae8f66f885a5380552153abd8efca7d382`  
		Last Modified: Mon, 10 Aug 2026 23:34:04 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
