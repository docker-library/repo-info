## `openjdk:28-ea-9-slim`

```console
$ docker pull openjdk@sha256:90b0031bc6c3696ba794926f63bd766ee8a913eac44fba035b39820847047bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-9-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:0921fea569392f9fed9d7baf17bad753a571abc7d5a9259e90529c0a07515a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253618748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c9e9e34e91609ee92fbe6479f22bad69c6ba2ef98a26a7889932ce802af707`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 00:59:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:35 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:35 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:35 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:35 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15122dc2423aa57ea0f0d7b6929c0becfb7267e0a362806f650862643e75dd35`  
		Last Modified: Tue, 04 Aug 2026 00:59:54 GMT  
		Size: 2.4 MB (2371330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfb0062532927e55aed7398eeb9fabdb8654b324159b82c012e23ccbaf2c7a3`  
		Last Modified: Tue, 04 Aug 2026 00:59:58 GMT  
		Size: 221.5 MB (221466513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:a735eba1a887e603cbbb6152a5c60fa5d9be101a5d5a736fae29f471900c4aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031755bc14524c49218a9388f1afe501440d878d76276d2be1d5407324dd797a`

```dockerfile
```

-	Layers:
	-	`sha256:31e12cee6778c8d7ab923be372fadb6b2a430f2a963ddb59c12e6ce533785859`  
		Last Modified: Tue, 04 Aug 2026 00:59:54 GMT  
		Size: 2.3 MB (2276426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509fcd62844d84bacd4346cf64f4e5bc9b907408b3ee688d5f066d505b9fc8e0`  
		Last Modified: Tue, 04 Aug 2026 00:59:53 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bf67f4098a86888f7a8c601688655c4df22c6c147a2a0c0e06502d79dacb92c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251991634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf53bd6186af5f0ff063c27c3dc4c31332e1be52c53088470e882c03dfb8aec`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 00:59:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 04 Aug 2026 00:59:23 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:23 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:23 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:23 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997e2297306967e951de0920b7b7248948e2eeb13c1e0e639bc70a6d91c198fb`  
		Last Modified: Tue, 04 Aug 2026 00:59:44 GMT  
		Size: 2.3 MB (2314655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32eb9210dd602fe2a69b88a45eae6a0650f76b7ec909dfa89bb9ce0f7607b48`  
		Last Modified: Tue, 04 Aug 2026 00:59:48 GMT  
		Size: 219.5 MB (219533274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:21b220753de8061289c9a766d172c2fc7e427add8d3a9139c5d04f0394499ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cfda9f009fa3f60f7671acbf3c2a6ccabd683d6461f0ff0fe3e0ea06973580`

```dockerfile
```

-	Layers:
	-	`sha256:c6cc2d9471ff1f3496d542f3054d5fddf4ea5c47263c4619f7abd5c392620fb6`  
		Last Modified: Tue, 04 Aug 2026 00:59:44 GMT  
		Size: 2.3 MB (2276104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f8c65ba8f4d611e3b8f7539aabf5ab2174a9de643ebdf7ade8052e0f17a3ac`  
		Last Modified: Tue, 04 Aug 2026 00:59:44 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
