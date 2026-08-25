## `openjdk:28-ea-12-slim-bookworm`

```console
$ docker pull openjdk@sha256:33a7b274ca72e170e09990246cea51ba135bc480b72ec7625f41c6eb68d0761a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-12-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:dac0f947716e7f24f853274d967c41bff0b0df2e234d0c9c0043c560681a0983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274972692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d150cf951f487355e6c438823614fa8fc9ba0e10ae49c873ba8cf41cb239ea12`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 18:00:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 18:00:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 18:00:50 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 18:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 18:00:50 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:00:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 18:00:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029c537c02123f51fd4e6bc42562edb705d1db74439dfb5a6e09a1c4207756cf`  
		Last Modified: Tue, 25 Aug 2026 18:01:14 GMT  
		Size: 4.0 MB (4046365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538332a5b1f704fa836c745760063fba1cd3514f2b80e7ec1a0e497d032d48b5`  
		Last Modified: Tue, 25 Aug 2026 18:01:17 GMT  
		Size: 242.7 MB (242693672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4f4ffd5ca5cba86837ca39fa6627931d7ffb76ad07ca51aa87d99791088bcdec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c18fae23ba3c72a068ab5c84e6970566431d0bf8c5675d6ab0a54827570952`

```dockerfile
```

-	Layers:
	-	`sha256:3cb65a0c63483056d7a0e4a6211c205a3c44df21d9a39299c11ae449edf16ce0`  
		Last Modified: Tue, 25 Aug 2026 18:01:13 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f7bb5d7296ca9c47b0b10e19f283e9314c209ef0925900fc7893e60fb434831`  
		Last Modified: Tue, 25 Aug 2026 18:01:14 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-12-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c19535823a83b452d6eff52e89faa3e9abc9747601873ede6e5af4ab445e01e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272758891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90a57eae311d5f2f8490ce66c9b29868550369cad2708651e1a34fdea15ba9c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 17:57:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 17:57:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 25 Aug 2026 17:57:57 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:57 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:57 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aaca5b354ae973d773b485c15cb265559e7f8e6b7a77f410f85af309fc3e7b2`  
		Last Modified: Tue, 25 Aug 2026 17:58:20 GMT  
		Size: 3.9 MB (3861351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3ff8a02abbbc15b5e9a5627f9a340ff68d8522ceac0873ed7bb95ea469244`  
		Last Modified: Tue, 25 Aug 2026 17:58:26 GMT  
		Size: 240.8 MB (240780251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-12-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ff1cb18a99489244d4ca75cc704aec7fe011ab98e3718a9e3f4e724bcc0fa439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756d2777520cefff979503581d387a261a9feb6dd985c4a6c0aff303861c529a`

```dockerfile
```

-	Layers:
	-	`sha256:a9d8ce23a224d6d10606dfdf5c4e81cb22ff3d0503e5291873b272de2d422587`  
		Last Modified: Tue, 25 Aug 2026 17:58:20 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93e6678a6e648e7c010cf23c697461f58037122423fec44cbf25f8ba4fdc40d8`  
		Last Modified: Tue, 25 Aug 2026 17:58:20 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
