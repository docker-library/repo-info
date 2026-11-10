## `openjdk:28-ea-23-bookworm`

```console
$ docker pull openjdk@sha256:d0ef3e9017cfeb6d04a6db98787d216cba7b5ec24ef5cf8fa5bb70b47886dc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-23-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:5cd5804b9e63cb8da3bd00aae7ae066d85b1791fa1a8dcdd455d52b1d6b8c7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.1 MB (397147581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021e04a9f8514f32627a739df1eb17507d77b6c5d9e3190b0c02f7da854d7d92`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:44:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:44:13 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:44:13 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:44:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:44:13 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:44:13 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:44:13 GMT
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
	-	`sha256:851a66caf6a5ab26e66d193f03601c53c5cea8733067725b679fb9204a910b3b`  
		Last Modified: Tue, 10 Nov 2026 21:44:42 GMT  
		Size: 17.0 MB (16950053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125098cd812985f15545c53b0d3ff994ce19db3a3509b3effcece326b5f051ff`  
		Last Modified: Tue, 10 Nov 2026 21:44:46 GMT  
		Size: 243.4 MB (243365207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d409e3c3f590850620a5ac3f2863f64c323307f64f947007faa72ffed389a995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8690062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdb9181585efeac0dc5f228315e938491caa2cde1ee718ede216f45d9b70b35`

```dockerfile
```

-	Layers:
	-	`sha256:90c49e363828bb5d9a8fde484cf2824c314d4575b5b036f6b25d03a20b6ba270`  
		Last Modified: Tue, 10 Nov 2026 21:44:41 GMT  
		Size: 8.7 MB (8672123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:025da5fad7dad0d22465d3b8bdac03e66fdf486fe7c86ab800efea0b3f810bf9`  
		Last Modified: Tue, 10 Nov 2026 21:44:41 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-23-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ee9bd160d6e224c7fed789d055b8fc95a4a9995a650b1ac25ce5fbd26b91a9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395513130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73333a4c522bf4fbfae81aebd4e42c999fee029e2e1d9cfb09a5e18d047abed0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:46:30 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:46:30 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:46:30 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:46:30 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:46:30 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:46:30 GMT
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
	-	`sha256:a20cdc671e56ffc061145c5d391909b468863fab64e01def55e85331c1d50ace`  
		Last Modified: Tue, 10 Nov 2026 21:46:59 GMT  
		Size: 17.7 MB (17734137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050f418e685f677661ed2120e66dbf7a731788c5e9a065c11b7cbb4451461764`  
		Last Modified: Tue, 10 Nov 2026 21:47:03 GMT  
		Size: 241.4 MB (241397416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:522fdddd6544b906b03d1fe3f1aead0f9962e072d76729479c66902501cb2b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8827026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02498bcd709df6fbd3c5ad69c6a51295aa6f09b36bfc2f46136866c763ef67e3`

```dockerfile
```

-	Layers:
	-	`sha256:7cd84554f791dba3b7c665c92f8b8500ae46af7c4116867a4b618b31053c90a3`  
		Last Modified: Tue, 10 Nov 2026 21:46:59 GMT  
		Size: 8.8 MB (8808968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc713dfeabd37db3ac6d2c54dc9d95eea93b173a4edaf4ffe44890b2b549e56c`  
		Last Modified: Tue, 10 Nov 2026 21:46:58 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
