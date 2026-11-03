## `openjdk:28-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:621ad30384a2b876c7abefc20110c9d65cd3577f74e13846f26d6f19ca2c55eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:1d4dc09aef9cc08cc5217eb0f589d17a2d0eba79376a0dfdfaab0c55e0862bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275501137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b10cf6d19ac7ea983f1659a0ec430a384f550adc96f2ae9613b67a622f0d31e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 00:59:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:27 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:27 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:27 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:27 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:27 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b4422f1198d2462cb6ef4dd3eeb4a49291daf93959b0050c628ddbf9f3ac7d`  
		Last Modified: Tue, 03 Nov 2026 00:59:49 GMT  
		Size: 3.9 MB (3852374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b84c800ea025e60c87627837cacc34f1ac14470caa890746fc5e7ae8a7f9e42`  
		Last Modified: Tue, 03 Nov 2026 00:59:54 GMT  
		Size: 243.4 MB (243401326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9e45bc3f65ffafee6aa83dde80c6024ede169b8d543a82b733e52445cc4109f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd5727e7bae9279387034d3c5d09cc6f6ed5acc155a93880621d3141690cae3`

```dockerfile
```

-	Layers:
	-	`sha256:d270da0820cb9857ae392af0fc1a8424b501a1931a333bc3f2055f17c43fd38f`  
		Last Modified: Tue, 03 Nov 2026 00:59:49 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24e0f4169d06e1a61b0e8a1d14b2f855d1ad65a3fb6d30fe04034362701d52b`  
		Last Modified: Tue, 03 Nov 2026 00:59:49 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a2b2bf2d896408cf7888dbb4392526607529a38c31a7f001be38dafb4b1984bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273232666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d5e7442e9636c0d7e06f338d55defa0e7990114e289d8a0197b6b99af6c296`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 00:58:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:11 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:11 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:11 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:11 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:11 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e054b4e70f0b2d708389073f9e6d0d259beb8e34f77f122ebde0b2f5e57b2fb`  
		Last Modified: Tue, 03 Nov 2026 00:59:35 GMT  
		Size: 3.7 MB (3666884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e8783716a12a0a8e0ad72e0e026ba093e006d920c7d6a3af0a18c75abe85b3`  
		Last Modified: Tue, 03 Nov 2026 00:59:39 GMT  
		Size: 241.4 MB (241427831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:093a7c1fbbb01d4b3b3b55f259174d831deb9ad0509bc360489f3c47ecb2029e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8478a77d29fe2a9dda3fd5b54b399b276732e4b89b024fe7edd7ff693e7401f`

```dockerfile
```

-	Layers:
	-	`sha256:c868275b4950a741941b083d56ecf98c20c94e98ef01a4725aa9f701f2b71be8`  
		Last Modified: Tue, 03 Nov 2026 00:59:35 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c56532ddf0b3101c106ad2bc4a681ed5178e05f6ba82559ad35030706bf73178`  
		Last Modified: Tue, 03 Nov 2026 00:59:34 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
