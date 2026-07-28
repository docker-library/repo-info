## `openjdk:28-ea-8-slim-trixie`

```console
$ docker pull openjdk@sha256:620a9c7110686dce1a9470f494deaa4235721b15b3d68807dc9fe828d5a5219b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-8-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:0cfaf33966c160f418b6b398bdbd5a53d8e19c58b6466ddb3f0ff2dee6680c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259849843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2860d761c06fa3f5fce53d76a953553e38c0947853dca022b1cd873aced1221`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Mon, 27 Jul 2026 22:08:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:12 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:12 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:12 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:12 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:12 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba14bae7c9ecd322ee072a438ff23269a7e8fbd6e3ca424afd3fcf7709699df9`  
		Last Modified: Mon, 27 Jul 2026 22:09:30 GMT  
		Size: 2.4 MB (2371326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5eb35717059d4737c0f7c826a3ab42ec5aaacd570c261fc1d63b7e8e85efd51`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 227.7 MB (227697612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:6201aa6c6686edf39c6d613bcac91915f2767751d99e930264775bcbc7a5aeae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee68318f6179a59d8f89fe4440978170776fa81d0078de0ae21cd28dcba4307`

```dockerfile
```

-	Layers:
	-	`sha256:7f7b8cb35e6b0b3d0daa15418ffcefb7853716fc22f05784ea9dcb8d2b43af1e`  
		Last Modified: Mon, 27 Jul 2026 22:09:30 GMT  
		Size: 2.3 MB (2276426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94b8aafc2095cb9143f0382fdff1bcd1501f75078fb32681ccd2d63486d84966`  
		Last Modified: Mon, 27 Jul 2026 22:09:30 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-8-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:64a8401cec8e418b3324383c7abd60fc02dc43f412ded06b5d4470bd4664d088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258214465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0447660b30c69484826bd6310c085ba04fe1326d376795a8ede6014b1d2e62c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Mon, 27 Jul 2026 22:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 27 Jul 2026 22:09:22 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:22 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:22 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d607766c40d39ecb383d1ad4a14597d3c2ded5d5a11e37a8fd752eec911827`  
		Last Modified: Mon, 27 Jul 2026 22:09:43 GMT  
		Size: 2.3 MB (2314649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1823a1a738159454d13084ae1a7a72b893b2b4e072a0adea35cb07ef518f5cb9`  
		Last Modified: Mon, 27 Jul 2026 22:09:47 GMT  
		Size: 225.8 MB (225756111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:bff0886421d2ae3a2889d14550c260928fa61806019cb2ff64ea022cc46cc78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c2399469f89d12d12410a10786d86fc91f71476439defca2e744f0d27c187a`

```dockerfile
```

-	Layers:
	-	`sha256:ff2ab627edce0f434ffa9ad049ebb2e74588828b5f0b81f9fea7ae1dc1c5c52a`  
		Last Modified: Mon, 27 Jul 2026 22:09:43 GMT  
		Size: 2.3 MB (2276104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:386c0ac4f3c246152ff3934e3a1b59bda573f05e24d69d93577bb12b611fd96f`  
		Last Modified: Mon, 27 Jul 2026 22:09:43 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
