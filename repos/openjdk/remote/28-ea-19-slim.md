## `openjdk:28-ea-19-slim`

```console
$ docker pull openjdk@sha256:7283e84ef5e63d77f466f11efdca00ecb5b151ae932c150abbdb5c96b7ca14f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-19-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:abf8497bfb58c5a964c861831fe89e70438cb89e6720418ac28c30cbef5d6df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275136931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d340c445a15d9737ded5ec6a312d39bc3d4e713d3bf524c2c7e6edd9191b985`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 22:56:13 GMT
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
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e64c80ecdd41e03e6a7bf0edd1b9f9461fb0ba3bcb0e69df2cfbb00af10aff0`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 2.4 MB (2371385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399d2e63e265bd50f85032b8f9275cd922841caa7419d5755a55b1eededc199c`  
		Last Modified: Mon, 12 Oct 2026 22:56:54 GMT  
		Size: 242.9 MB (242922196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:bc1146396cc56d6894ffc5167571a0df48dd1f1cc0417245b7d730b12a2dafd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14820a12ab4f283253b43ec40d8129ebe9d8d47d4603d1b104c01cb766a3cfd7`

```dockerfile
```

-	Layers:
	-	`sha256:e9bbe4ed292518260b436ee890504786c0c01a1b26b8e3f361882d3880abfd5d`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 2.3 MB (2285558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dcdf575eaa69e81b3fe69140748c7d8af57edb87c0d94c0b04b2318f95a9136`  
		Last Modified: Mon, 12 Oct 2026 22:56:49 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-19-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ea4c341dabf008fe8d9158faf148d0e3844fcc68f077e7f0903b90737d4414b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273471292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59fc11e4f327ae8a7998ba6059ea4450439beef4458f41cb1d95489f263fb1a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 23:05:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 12 Oct 2026 23:05:52 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:52 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dc5a11fa288dc871ad6bd067f4fc71540a3c6de9055afc44bc3a00b641b3f1`  
		Last Modified: Mon, 12 Oct 2026 23:06:16 GMT  
		Size: 2.3 MB (2314394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277581bba2528bece66392ea4020e7a7f9e223df614fffd0bded8527572da0b8`  
		Last Modified: Mon, 12 Oct 2026 23:06:20 GMT  
		Size: 241.0 MB (240956616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-19-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:b155b6335bd977de8c792e240af24115d366d141a3ebadd6f3260c8ac1167062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8aa701f4f73ac9197c004f0d292b28ef2f4e340907c0f5bd0fafaae8cd687`

```dockerfile
```

-	Layers:
	-	`sha256:b4b0235177aecff78e162f1e1889f4d8045a8dfaf71031ddb88741d5e4aa1bbc`  
		Last Modified: Mon, 12 Oct 2026 23:06:16 GMT  
		Size: 2.3 MB (2285236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1473c4842de63ddb52f565a94fa45e9efa8ca5693c015dd3e8740839c2f111`  
		Last Modified: Mon, 12 Oct 2026 23:06:16 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
