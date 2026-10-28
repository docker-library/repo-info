## `openjdk:28-ea-21-slim-bookworm`

```console
$ docker pull openjdk@sha256:da49e8ad00e8c0165b45826bb33a945603a9fa5db139f4401c89f1219d17688d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:42881927fbe1dfee3b90538e77e35bcd63bf05c9a0220305dc3c3e4ece8fe41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275440456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cd324ba35bbeca5b851c2a2ae3215cac4984aa5da91417d1d8e06492586149`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 28 Oct 2026 01:44:11 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:44:11 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:44:11 GMT
ENV JAVA_VERSION=28-ea+21
# Wed, 28 Oct 2026 01:44:11 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c72f5bed10b54e99b210b3a2c9cbf0da4d364533564f9c7aa505e3684d27`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 3.9 MB (3852326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e5d1f4a6f203bb7636efd763c420a862b8d2b023dc592ba3a64d8c63345088`  
		Last Modified: Wed, 28 Oct 2026 01:44:37 GMT  
		Size: 243.3 MB (243340693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:5e871eae23531ef319532c113516fdfa87b6f04a608a62a1599a6e8d3e28fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18cd56b6f7d1156b1b7578d76c5f3982522d34aa00a794300c06c365f19acaa7`

```dockerfile
```

-	Layers:
	-	`sha256:e0a1f9b190590444b0758e21a317709c7f8dd3c8b55caf6f5ee88da658b60d02`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac3b4b465c23c3248b40d6880f29d41de40864de7c7c8f1266c07d95a7e7ee5`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c7c00f25da8109d0ecbba838722f1db3a5c78151d4e8755428e30f2819bf4c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273153796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513959062901274ec18fe8d475bd924c46341dee8ffe31421934ac20bdde94cc`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:47:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:47:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 28 Oct 2026 01:47:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:47:24 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:47:24 GMT
ENV JAVA_VERSION=28-ea+21
# Wed, 28 Oct 2026 01:47:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 28 Oct 2026 01:47:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ad8427cc7f1e35a8d88ab8f774a833e7d208025449a1f20f714e2004d115c5`  
		Last Modified: Wed, 28 Oct 2026 01:47:46 GMT  
		Size: 3.7 MB (3666873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ec1e5a324b2a3e3a919d7f1eb905f2d4b4a6f9a0c592c04444c493d9980b9e`  
		Last Modified: Wed, 28 Oct 2026 01:47:50 GMT  
		Size: 241.3 MB (241348972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:6db5efb502fb4e2d7bd47b177c3b901cc00f26ef055813d9c1b876395347db22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae0dc2156732fb2bf496d6848b099d231f0bfc2e4e386478448cbd238d69309`

```dockerfile
```

-	Layers:
	-	`sha256:fbb7263a2088e37ed1169c5225ca7c2b18a20ddf774850abebe971845f841c1c`  
		Last Modified: Wed, 28 Oct 2026 01:47:46 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f015e40863e083509d80f813e4f8be9982433526c2a7d64e7a253671ace3b689`  
		Last Modified: Wed, 28 Oct 2026 01:47:46 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
