## `openjdk:28-ea-6-jdk-slim`

```console
$ docker pull openjdk@sha256:abdb1649f3eb85991de3a748e5fd62f7ed4015e17aa28ac3171682b2e473cee5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-6-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d0da1bc858e30873cdd2162a786687bc4548503fcb0e78e3e0110c0e9476c655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259771545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199fa3a2040f2c2d00799f5251e4184c2780ecb7a88fd974a4ed23694f00d02c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:11:13 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:11:13 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:11:13 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:11:13 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:11:13 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:11:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43496dfc49ef1bd26b97eb9e988e4a6e82199a1a5120c8839e9a9da792608e45`  
		Last Modified: Fri, 10 Jul 2026 17:11:33 GMT  
		Size: 2.4 MB (2371277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc307e6a314987ca38b72f6df6baa68a7f3792b13727b363f7112f1113ef8e8`  
		Last Modified: Fri, 10 Jul 2026 17:11:40 GMT  
		Size: 227.6 MB (227614849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:8f485371d52aee3067e59cb8e370567594d23880e4001976d972a07ae7636598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acce2a87541eab3c64c2413a0491afe8e3200ee79a9fbe1c100f8352fe5d45e`

```dockerfile
```

-	Layers:
	-	`sha256:55e5d200707761f5aa2e43d07ff65745fdbb8560a4e1354a4ff1b3ab5b16bf01`  
		Last Modified: Fri, 10 Jul 2026 17:11:33 GMT  
		Size: 2.3 MB (2276372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab0fad967d13f1e96e9dc46ef6b5055e98cdb079f38976c564721284775c0fcd`  
		Last Modified: Fri, 10 Jul 2026 17:11:33 GMT  
		Size: 18.1 KB (18088 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-6-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f1c29ae4b04abfa70cfa0bb59e3a2290597fe715df239dbba92e231528e222a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258139161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f13b868cd75e9ca37f025fd060811de105cc62357d1a02df8c08624ccd582a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:10:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:24 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:24 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cece710031202f1da04cd8487d5c99215cd3aaf8e87ab479942ea29090e7ca`  
		Last Modified: Fri, 10 Jul 2026 17:10:45 GMT  
		Size: 2.3 MB (2314525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb75c0aa5e802d9ce37f7131cdceb0a4193f87246210b9783b6230f2ac1ebdb`  
		Last Modified: Fri, 10 Jul 2026 17:10:49 GMT  
		Size: 225.7 MB (225676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-6-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:082ea36d4ca4646fc2abbbfb47b8a0c721ef1f82430b1c91953f3ade7ce3744c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66ec17b40ca812dc32b5551ab960c901162305093e02db514eeab0b37936028`

```dockerfile
```

-	Layers:
	-	`sha256:8863d13fa61e62d088a940b45f2e55bde2212d36b18faab60e16a291c8348d24`  
		Last Modified: Fri, 10 Jul 2026 17:10:44 GMT  
		Size: 2.3 MB (2276050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983719d43d4adabb9c61c13cee261df343854eb9aa7a0c0891b3d52ebb2b014`  
		Last Modified: Fri, 10 Jul 2026 17:10:44 GMT  
		Size: 18.3 KB (18255 bytes)  
		MIME: application/vnd.in-toto+json
