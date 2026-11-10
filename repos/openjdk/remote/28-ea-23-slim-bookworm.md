## `openjdk:28-ea-23-slim-bookworm`

```console
$ docker pull openjdk@sha256:d1ee66cab79637caa38d9fa68a19163c0993f23c3f25cdcdf80b334e942787ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-23-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:80eaf24aa2c36c862235ba29afd44c6cc1be9048e8fbdbcf1c185fce68127801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275514867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f0acd7ed8ff0912095a50fbaadf07054611d6b10ca0f5f7617e2586efb74db`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 21:43:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:44:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:44:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:44:09 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:44:09 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:44:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:44:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d8e97711066515929c5c8f59812ba4a7e5f425353c59f44fdd520cb3f9f653`  
		Last Modified: Tue, 10 Nov 2026 21:44:30 GMT  
		Size: 3.9 MB (3852278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897cbf4a24ee64ad8df76a84fddaba0a0f6c97ae7512a5fe592c78ca37bdf99a`  
		Last Modified: Tue, 10 Nov 2026 21:44:35 GMT  
		Size: 243.4 MB (243414607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:107731b26e094d08207b0468f472b494de17e64dc4b5cf4330d9f96bccfcf562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5389dc5c8a0830b5a9168c63e1f02d4cbeecc6319bcc4d0ca82b7def93b86f1`

```dockerfile
```

-	Layers:
	-	`sha256:ecda05a8781a736d522d84cb6a57ab9b09311f0e20061fc883fbb7bde6d664fd`  
		Last Modified: Tue, 10 Nov 2026 21:44:30 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41629aa4a7109e8a484114fb88fbcb5e2cb59ad6ec1decb343cf645ed41aa502`  
		Last Modified: Tue, 10 Nov 2026 21:44:29 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-23-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6b7324bd1f4ad6c7f6de362c93b9f6176210faebc038e808e4571f40cb7634c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273264029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93aaef831e1a08ff9c18ef237b34cf4f75b1be63a17c29a5f4145ecd8315c4d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 21:46:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:46:33 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:46:33 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:46:33 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:46:33 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:46:33 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:46:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a493064577201a43e980e1e021ba8b2d10b3481b2c288643f37306c66f7e090`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 3.7 MB (3666901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c563a17c7861e2452c99db4936592d93391e3fbcdd34c27616d0bca19975a4e`  
		Last Modified: Tue, 10 Nov 2026 21:47:00 GMT  
		Size: 241.5 MB (241452770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-23-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:96917042d22bd037f7f283e4dffe3e60fd6c48d8645b19efae13cdcb5fed8845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2edbe473b0df41737cc417ffb6ac2c8d8027427a5ed0dddbbe06000ad75e08`

```dockerfile
```

-	Layers:
	-	`sha256:4276d73e5e58c4ae9c73286d9bd3c2e3701a0987cea461cb33d111021d6bd9cf`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f71022758d6890bb0280cd67f4f77b9aac1577249bdfdebf1724ab1f8eb03dd`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
