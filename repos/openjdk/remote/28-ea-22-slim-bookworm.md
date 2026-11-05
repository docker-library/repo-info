## `openjdk:28-ea-22-slim-bookworm`

```console
$ docker pull openjdk@sha256:13879058d6d98cb67f515f37ebef88567ca556f5d5097f7191274fe6b42cf12b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8a2482b3df86a9104c758408ccd6801178d241563f1c230a041b03b42df3d918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275501720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3652e72d3765de252450f0a5bc3633c5173fb2c905207d1d61eae1eb4aa5aed2`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 07:42:21 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:42:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:42:21 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 07:42:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 07:42:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872211938ca3b05808ba7da60477cc83209587a07ffb36aa10004aa61a574639`  
		Last Modified: Thu, 05 Nov 2026 07:42:41 GMT  
		Size: 3.9 MB (3852377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e9e4cce34decb6e9ac7fcefb466f03c0e392ffde2e51a9ee9f26eb8e902faa`  
		Last Modified: Thu, 05 Nov 2026 07:42:46 GMT  
		Size: 243.4 MB (243401361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:0f7ad1b2dcf375a9da3ab8447ea924513fa78fb9435a2c8d0a4fa6303424278e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7502acff058a4796af06775dac150a9fe865685b77bd8e3e83321ac4a13a61`

```dockerfile
```

-	Layers:
	-	`sha256:18715f796bf28ff80eb2a80d6eb30aa27b75ece9ac0919574bf4d497a052f329`  
		Last Modified: Thu, 05 Nov 2026 07:42:41 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb92cdca9cec2e20a1d473a283ec8316ae9a7b7b920cab017b3d91a4ee048f15`  
		Last Modified: Thu, 05 Nov 2026 07:42:41 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b477bf0c4360207e305d81ec2f33a660560cff1393c4adafb863794ed9193791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273239157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8345c991378e7e47924040f8eb638c7483069048fe8bde7ed8a8fdd05c41a4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:46:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:46:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 07:46:21 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:46:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:46:21 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 07:46:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 07:46:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1ae16c8377d1f7170873f7289b171227ea0692ca83ff74900624397110a884`  
		Last Modified: Thu, 05 Nov 2026 07:46:44 GMT  
		Size: 3.7 MB (3666915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6bf7bd25b9d6277d5b5224f2b8c869252e8e7f16a62fa9d2236a2fa24b912e`  
		Last Modified: Thu, 05 Nov 2026 07:46:48 GMT  
		Size: 241.4 MB (241427884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:f741ea44e6fccdc3cdc531f16382b97d6a38fa3332bf1ab8956c88d0cd981712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c2032cf3798c7660a3cccdc18f6994b79589d8dc74d51d10e0f289c0eade4f`

```dockerfile
```

-	Layers:
	-	`sha256:b05bc662f89b43d83fbaf2dfc1200e014ef7eddd151d9c0492f29e3a54a6733d`  
		Last Modified: Thu, 05 Nov 2026 07:46:44 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83d67e65a47b117625c5448880ebc2d895b0b86463101e12db6c3a1dd2118148`  
		Last Modified: Thu, 05 Nov 2026 07:46:43 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
