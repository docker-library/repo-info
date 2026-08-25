## `openjdk:27-rc-slim`

```console
$ docker pull openjdk@sha256:ed02663e79ce56e740db1ef1f12240f035ce2ce84d7ef86df8a41b9c1cb97698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:368dab2fff3554d419cd05a8bfc0cb11ce587373ca256d39f536c1dbdebe0d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259356152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8be1066c24c0c604917c24a0b1d543cec168ef4bc52b4ae2da84931ac0694f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 00:56:21 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:56:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:56:21 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 00:56:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:56:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2846c7964c35fb242076ca3fcd9daeaacfddc1d036bb6a57e1fc555e6bef1119`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 2.4 MB (2371290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec25f9fca6f4f97245f60c71a895f810383f6d22663831bb3aa8f5ebfc5cf13`  
		Last Modified: Tue, 25 Aug 2026 00:56:47 GMT  
		Size: 227.2 MB (227192204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:d54e9d20c112ad9d2d383be0786a12d0b18dbba3292339671a45545998f6e5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a57d454772275a9228d351d97e835e4ce371a72643faf5bbfed86780ead61d`

```dockerfile
```

-	Layers:
	-	`sha256:bd8ef00a48950a4f44bb3d17ea47d5b04ea6514ffb6e99eb0bec3e439459063c`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 2.3 MB (2275324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb50f94d3cbb09b6519a01ffeb1fd0cf642812b633edefb6223fde9b7dad86bd`  
		Last Modified: Tue, 25 Aug 2026 00:56:42 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:9e9030a500980041b52f2baaa7fd3771c5b3e7773b6baca8130ac40323b3706a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257637174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219574d9263ff9696f25952120915f72e73458e79b071b6ce0c60a626ec7ccfa`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:57:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:58:00 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 00:58:00 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:58:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:58:00 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 00:58:00 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:58:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351c3405ae2b73c0e387f4598c12b541a5975d030474396bb563131e7fd90139`  
		Last Modified: Tue, 25 Aug 2026 00:58:20 GMT  
		Size: 2.3 MB (2314605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75345ed739b585bd34100d01f5b40eda0220e59b7d552cfb99406a2367aae2b`  
		Last Modified: Tue, 25 Aug 2026 00:58:24 GMT  
		Size: 225.2 MB (225162987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:97d60e700d5d651e3a10fbcaf6abedb351678d27a19654c266aa749973d19c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc276dbd6e6a92efbcc3f0f568c957bda783ae481083fc9c3dfef303ddd68f0`

```dockerfile
```

-	Layers:
	-	`sha256:004476220c67297d1c7fce8781767571bba0edc34dac47e2948fe236cdd8db4b`  
		Last Modified: Tue, 25 Aug 2026 00:58:20 GMT  
		Size: 2.3 MB (2274954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04d5b14cdc5046fac10253be637993f18bf5f69e469f52559e9a9efce0dce75c`  
		Last Modified: Tue, 25 Aug 2026 00:58:20 GMT  
		Size: 17.0 KB (16992 bytes)  
		MIME: application/vnd.in-toto+json
