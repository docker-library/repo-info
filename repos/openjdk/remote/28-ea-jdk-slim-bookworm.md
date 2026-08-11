## `openjdk:28-ea-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:29be1d4c151e8b5465f97ccee98b5b6b27414619c3ed618e6f18a5c94d6a7ba2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:2ceb5d9de787f143f34e08496d8fe8c57629dae0e629f201b482df0b29e091e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274952446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09adfcc6ba14dee45d075d5afd0e60cf4b33b6fa6b2f05a62250fec4be11ecc5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Mon, 10 Aug 2026 23:33:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:30 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:30 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e593ebcdd19de91c42f5c82de1d78975eb0da6a9b18f682d4121d9da4548ddbe`  
		Last Modified: Mon, 10 Aug 2026 23:34:07 GMT  
		Size: 4.0 MB (4046312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d5b2b23fc181a74f3ed87cd7e5a95c043408f9b76491376b6e3bd1661e252d`  
		Last Modified: Mon, 10 Aug 2026 23:34:57 GMT  
		Size: 242.7 MB (242673544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8a1796e21f060f433d280c150945e22be1ea1bd16f33b2db12919a34091e5aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48664e2138260b381659716125197dc32a55f9b20abf36444f99d784b381dc7`

```dockerfile
```

-	Layers:
	-	`sha256:d4af2de129b41a739a7aca6d00df60d628dc85e3a328b366205287b67074fda8`  
		Last Modified: Mon, 10 Aug 2026 23:34:53 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a114c769a22029802309b7a8cea6be402506f11ee7b87e2c1b9202fe63a8e513`  
		Last Modified: Mon, 10 Aug 2026 23:34:52 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f2384e6a5ef0772a06d742ba80be94c62f7bf1f3c9d865a0f1cbb30c0c68f9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272741449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef06cc440a7353fab7aafa1e2ce6609e7fccf1f5c0f433898ecd04b59f071ed7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Mon, 10 Aug 2026 23:33:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:30 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:30 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9b95b73800b7fe9dcaf1828a4b20d53b1c11c71137d5f212b0f38f540bdb00`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 3.9 MB (3861363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c448c51a7e0b0edcf72f8963b49ca9a22a0be76212be34963e27bdb8355e90e`  
		Last Modified: Mon, 10 Aug 2026 23:34:58 GMT  
		Size: 240.8 MB (240762884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9ff28766fa75ea532beead0b5f1b7ba106ed7be0af4ea12dcb4ef13051df3690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1585145c45daa08bd051a16f4198f02d1a982daa59a109540ee594ef1b7e9b7`

```dockerfile
```

-	Layers:
	-	`sha256:bf532aceb3fe672ed04005b57d69babed9ba9bb923482150513250409a0d88d3`  
		Last Modified: Mon, 10 Aug 2026 23:34:53 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5ce62ffd7a12013ecda23094a3eb3ac82aae2026dba610fb772c3a88a571205`  
		Last Modified: Mon, 10 Aug 2026 23:34:52 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
