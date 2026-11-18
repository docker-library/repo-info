## `openjdk:28-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:3d14d5cae5c4847bd1b138ba0bd8a525246ee3d358e173d9c64156306f57b0ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:285b7fd11fdef5cedbb43365574dc2defb13c7280e6a988e504e3f452e00b599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276717657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d66f6afb5ce00e2c6a80db5c41b827f5bfcbe04d4c59565b42ee49eb235bc1e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:44:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:39 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:39 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:39 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:39 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:39 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766cb8866febfb850f695417ae851bed5921f75ae0c0fece8e1e1ee4febb5c9d`  
		Last Modified: Wed, 18 Nov 2026 21:45:01 GMT  
		Size: 3.9 MB (3852384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e814f76d459ca039c02557e160f60c2febbe128cd0535118c1d476b071694d`  
		Last Modified: Wed, 18 Nov 2026 21:45:08 GMT  
		Size: 244.6 MB (244617291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:f544efe39c5ace7de981f1b7a9cc5ca486914d84be168e5eea3cc5b23bf62033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad2685fc9c08084c4693205f45c11dd10cc1e0823ece865e3eec2847b99832a`

```dockerfile
```

-	Layers:
	-	`sha256:1ae07812dbb98617e013314ee591e5819a264a85b7e8b2cc6826560dcaeb47c6`  
		Last Modified: Wed, 18 Nov 2026 21:45:02 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2611e8ab9f6986d8bf44cb3c6f87ae6b7080e7df0e7aa7c7a44fbb65f0b64e14`  
		Last Modified: Wed, 18 Nov 2026 21:45:01 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:00dd306834265cc30c12fd17273589a68be7306f9e08fa4856c6fdbc57dc7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274457339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b790e8ff9ce839be49dae4f8e00720707318869417edc84b9bd4692eb7dfe25`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:44:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:46 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:46 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:46 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:46 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53b0a1f7b8c2748f01a4c0ac0df09442f6d347ae5fbfd2033f53d5b205324cc`  
		Last Modified: Wed, 18 Nov 2026 21:45:09 GMT  
		Size: 3.7 MB (3666918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804c19079076ead98774b0a06b1931aa8f363d5cf5b298bca3acd9c206c2f211`  
		Last Modified: Wed, 18 Nov 2026 21:45:15 GMT  
		Size: 242.6 MB (242646063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:dd0dfb7dd00bb9ddd21880f3acfd685b374e485b00d68be624dcb342a83160eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef385e1ad8b6d9b153fc8f1cf2e25c9904ec1cf0c773b62e15713e26861c22d`

```dockerfile
```

-	Layers:
	-	`sha256:4eb9a5ccf0e05d344dee5ea78b806c70e34e1a942d6b43e2ed0f092e40006679`  
		Last Modified: Wed, 18 Nov 2026 21:45:09 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8b1988e79b7a84796e5152ee0c9170f8ad24a8a1fb0a4669e7deabe3040880c`  
		Last Modified: Wed, 18 Nov 2026 21:45:09 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
