## `openjdk:27-ea-slim`

```console
$ docker pull openjdk@sha256:4f472e8293bfc54b17bc80d71ea7fb8c79c24934dc5a6913a63129aca7f0a07e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:71fd6d3c295ee7708620139338c9059b0ef14c527bfc2df5d07720a37eae21f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259303266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab338593c9b8af7f4ea104537a8b5380cad3ccd6666adf720e721c61e287d06`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:48:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 01:48:29 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:48:29 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:48:29 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 01:48:29 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:48:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec559216625911dc8a1dc4bf2d8b6c9409fcc9b913571da425180b8b8df834`  
		Last Modified: Tue, 14 Jul 2026 01:48:47 GMT  
		Size: 2.4 MB (2371291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14695650cd1bc3017f319ead6d155437d2c7eb83e7425a8c94d25c4d621561c9`  
		Last Modified: Tue, 14 Jul 2026 01:48:51 GMT  
		Size: 227.2 MB (227151070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:6406e4ea5119f26f2649ccc13fdaa7c5647d768d5d61d389feb1b77a0ff71d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5626fb55876f92536368df936ae26dd730165bb1197b45f284a25fe68b0702`

```dockerfile
```

-	Layers:
	-	`sha256:b1c29ee5d083ab07c5dc6f7653b2e53ea8e05f668f2867dcfd38d2a6066425e8`  
		Last Modified: Tue, 14 Jul 2026 01:48:47 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3441831bd084e209e7e5e6d0b6ceeb1e83502bf647a24a588072103debcff0df`  
		Last Modified: Tue, 14 Jul 2026 01:48:46 GMT  
		Size: 18.1 KB (18108 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ce61e5afe51072f8755cfd2dae8703086115cd649772c432d2ed652a7b35fd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257588678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033fe90073ed091004504b770410ec010a0791c84f0a90d9eb21bbc74f909a4c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:51:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 14 Jul 2026 01:51:50 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:51:50 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:51:50 GMT
ENV JAVA_VERSION=27-ea+30
# Tue, 14 Jul 2026 01:51:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 01:51:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531484f34df516f24d8ab4200d11ad7b7d3e254f030162354eca2f25ffa65fd2`  
		Last Modified: Tue, 14 Jul 2026 01:52:10 GMT  
		Size: 2.3 MB (2314597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96d01e778863c2b2b5657da362f685404bddfd5b1a1310a19f47b66f2c18fb7`  
		Last Modified: Tue, 14 Jul 2026 01:52:14 GMT  
		Size: 225.1 MB (225130376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:6b5d23c593de23d2b868eb484c1f28477c48105906e2b920a31a0fff3cf7a1ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950e5f7950e99b3263af036deaed6d13c098f7db025a57899a37e7a14511f3aa`

```dockerfile
```

-	Layers:
	-	`sha256:db2c5d062f320ca03020266b6044b893b7ee7a170763d654db9a7a5c1ee21d41`  
		Last Modified: Tue, 14 Jul 2026 01:52:10 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aa97fd38121700efeab7af2f6e2d8d7c37d83b36d7760aa7928032d9ef1cdce`  
		Last Modified: Tue, 14 Jul 2026 01:52:10 GMT  
		Size: 18.3 KB (18273 bytes)  
		MIME: application/vnd.in-toto+json
