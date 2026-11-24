## `openjdk:28-ea-bookworm`

```console
$ docker pull openjdk@sha256:31ba0fab424678ffb0096c6cb9a184a93c60cb94d3f444494e69e943d4490d30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:980dee094f657cef07dc31d4c7dfaa135c56d525538eec40e994fff5b5bb199f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.4 MB (398437457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89a8564300441b8bab37625acd16995f6fda05d097eebb47ce8f6a94b7f772f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:51 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:51 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:51 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:51 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:51 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07530ac4515549fda2229e9be3200d323739fe1baae1283722977704580c716`  
		Last Modified: Tue, 24 Nov 2026 00:08:19 GMT  
		Size: 17.0 MB (16950250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8754044921745a0f8ffcf820ffcc48a7987f137b493141d193ca62942652e9ce`  
		Last Modified: Tue, 24 Nov 2026 00:08:23 GMT  
		Size: 244.7 MB (244654886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:6e9a0bd18c70d93c92735a4a98d122bd278f667a78efbc91ed3a49e91f9c2fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8690062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca2a8bafdeffbedb56795e4ffc3c925158f820be7987fc681e1d332efba65c4`

```dockerfile
```

-	Layers:
	-	`sha256:4472e2a4fd194d633ea5f1935481092eec7574253c41314be334e02910dc6611`  
		Last Modified: Tue, 24 Nov 2026 00:08:18 GMT  
		Size: 8.7 MB (8672123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2921185fba66d07ba555830ae07e8b5134d361cc335c500937a71aa53827b54c`  
		Last Modified: Tue, 24 Nov 2026 00:08:18 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:67b28dc9b59681a96d30b17916318e3cc4bb81fc2da7979bc48e520618057be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396780076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d0cb8c9b899af6a053d56df4b69197d80eca843ff5c7f2955f6b57a2d9c3bd`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:08:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:08:01 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:08:01 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:08:01 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:08:01 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:08:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d558de0a51e51c139fdc1b14592519e622dd2c795ad7c0505f2ea0b7b8f92079`  
		Last Modified: Tue, 24 Nov 2026 00:08:29 GMT  
		Size: 17.7 MB (17734135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fa78c711e014400c72c9720a006b0512bf2e16b5137c2087829263b6b52d5`  
		Last Modified: Tue, 24 Nov 2026 00:08:34 GMT  
		Size: 242.7 MB (242664364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a7cfc0860b8211a0b5e38414fd84479af31b0b17c0f692b4826e573df10482f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8827026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426f2d4696335eeb7958a9596cb328b2811b35bccd2fdd31cb3486ee178b8a78`

```dockerfile
```

-	Layers:
	-	`sha256:584d885e355b642c70031fd398204367386965cacf1d41c7abc03c26948f1b54`  
		Last Modified: Tue, 24 Nov 2026 00:08:29 GMT  
		Size: 8.8 MB (8808968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d64a4d5547c682ef209ca37ee9536e752fb7ceadd5b11ccfdaf042e807cb063`  
		Last Modified: Tue, 24 Nov 2026 00:08:28 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
