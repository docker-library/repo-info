## `openjdk:28-ea-slim`

```console
$ docker pull openjdk@sha256:4ce9e26f85e1c69489d03fbb83c9ead12dbe903ab3f4807e12845a008a31a287
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:672a3c0e987e6f12088651a074992866e421cbac711056f93b3ae892faa2f16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7e7608988f0e3dca307dfa80541aa3b5e683f5eb4b0cf59d5c9b5f1d5bdca3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:56 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 00:49:56 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:56 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:49:56 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 00:49:56 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:49:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440da6f7f3408203371e6d0fef51ecc1361fa1e8c5a8fd26f971139de7876c69`  
		Last Modified: Wed, 05 Aug 2026 00:50:14 GMT  
		Size: 2.4 MB (2371314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0ee0cda3a1e14136ce2ed3aff905e4a4062b4afe8f84e67f19ecaf5111ac3d`  
		Last Modified: Wed, 05 Aug 2026 00:50:19 GMT  
		Size: 221.5 MB (221466510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:815de2c13120ebe562c359fcd68a5435884a2a45f22b36e8f5c3ff7ef5a09d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7204215ac25505d4f37baaefcdb3584932969419be18556745ca0c9cfa50b1dc`

```dockerfile
```

-	Layers:
	-	`sha256:5446a10737390423b1442758fdf135854c46ebc8cdedde363142d7e50952a2d9`  
		Last Modified: Wed, 05 Aug 2026 00:50:15 GMT  
		Size: 2.3 MB (2276426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8084511af240ca5036c51d6bea5b49ecb3482fce5c4c4f394c609c4b75730c5a`  
		Last Modified: Wed, 05 Aug 2026 00:50:14 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2a9306c26ce0aab1df02ff3057a01d580a1d2cfe67d2e24da4c3f4e54b176ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251991437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425cc18e7ccfa86d02fba14a243c8171387ae26b3526441dc9c2cdc9d0da976c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:52:16 GMT
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
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dbb224e0be6b761dd33c6b0a1d47bf9e7a7514c1e239bc4522970e61412b8b`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 2.3 MB (2314645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0404d83cdb64f4e2ae371305421fa8452de0552520b9edc8fed987b18153d584`  
		Last Modified: Wed, 05 Aug 2026 00:52:54 GMT  
		Size: 219.5 MB (219533183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:515613f402147c8a93e24334a7d2b4fa96207d27cdc6c47761dd2d3ff68aba5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b497c9239af21289a618c5ded27e7b59444f10cd5d1fce257020f4dc10cb5878`

```dockerfile
```

-	Layers:
	-	`sha256:784ee7f0e7b86a2f9b7696367b19d2d5fb1d79b2797d260d723644ed0a019b98`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 2.3 MB (2276104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee416ff754a6f32604dfd2f47fad42ce3faa9ce4c2d212259e7722bcfafe9655`  
		Last Modified: Wed, 05 Aug 2026 00:52:49 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
