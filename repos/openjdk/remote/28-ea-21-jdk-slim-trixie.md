## `openjdk:28-ea-21-jdk-slim-trixie`

```console
$ docker pull openjdk@sha256:013ad3286b91d70a3ac32770323caae2a7828890e3cf18c7c0f0797326f391d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-jdk-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:77d6dd6f862ee0657440e6cc5768cec5235f6c9ade1839672f3dff664be9fd02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275560756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2857f2c130ff489e5cd276e24a7418ebfbcab618d0747e87d9c68b1f0489f0`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 28 Oct 2026 01:43:53 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:43:53 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:43:53 GMT
ENV JAVA_VERSION=28-ea+21
# Wed, 28 Oct 2026 01:43:53 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef753b866279c7608fa9d541780b36ab9db904f76106c09c37521afef4a001a8`  
		Last Modified: Wed, 28 Oct 2026 01:44:15 GMT  
		Size: 2.4 MB (2368511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cc369c53ffaa6e88df0ebab99f3bf6e3b32dbad79a37c6b02261b6ef96ef84`  
		Last Modified: Wed, 28 Oct 2026 01:44:20 GMT  
		Size: 243.3 MB (243337009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:3da9476617cae1be59081bccb42cdb7ee116b07bd6c049a20af08842753c3e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9086e8189f5928d30ec766abc44a72e3f0cd09b7d921e382e882605cad374228`

```dockerfile
```

-	Layers:
	-	`sha256:d94ead4b578279fd2570d419ae963531fb33d4de0c6a60c3f35641dadbe264cc`  
		Last Modified: Wed, 28 Oct 2026 01:44:14 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e25ae278417ee8da1725251bf3a77f95f36b50bf34247d8cac32a495e7d693df`  
		Last Modified: Wed, 28 Oct 2026 01:44:14 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-jdk-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5e0a023b6419cfaccaf52877c6c27d063590838cd38a178478dc02837b03f7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273870518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a980377495477a25694c369718f9c6aabfd1864441d17fa0d0b4240b5497956`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:47:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:47:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 28 Oct 2026 01:47:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:47:19 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:47:19 GMT
ENV JAVA_VERSION=28-ea+21
# Wed, 28 Oct 2026 01:47:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 28 Oct 2026 01:47:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb949c6573259fc7d4f4444ccfe175a0c100767640e1528f8ea9201efe130af`  
		Last Modified: Wed, 28 Oct 2026 01:47:42 GMT  
		Size: 2.3 MB (2311856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c77c4339b28999cdc86e63ab221dcd473f22f869035cec28a5b138c9a2a63d`  
		Last Modified: Wed, 28 Oct 2026 01:47:46 GMT  
		Size: 241.3 MB (241345166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:6f0a919ec1a12cc6b11c9199d1f83f02057f4c05d0f91c4e059109a1741f3326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93227762a15c515fc5d923c39e62e56c4a6d905fe30dc774cb833cf2bd38a5d1`

```dockerfile
```

-	Layers:
	-	`sha256:81a300253def4633e5dab2f9e62013e8e1b0e504a4cef5347ab24d599bc1f635`  
		Last Modified: Wed, 28 Oct 2026 01:47:42 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fbb6b3500cbccc885277b6b9981c6848a733f9154e2c112e407524c40da52b0`  
		Last Modified: Wed, 28 Oct 2026 01:47:42 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
