## `openjdk:28-ea-slim`

```console
$ docker pull openjdk@sha256:c2592278730b8f918bc0c36eda3a689023cfd34512473ee417c522cc0a7757fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:778b5d3004498f8ad5fa1f6e23937ad8ec4ca197705855063e373ee0f00f42a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275635189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc0fc0559e341eea34c893d811299b0ea7103ec48d3a43f2ed0eee9140c7789`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 21:43:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:44:08 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 10 Nov 2026 21:44:08 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:44:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:44:08 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:44:08 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:44:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a454328e4da452d4e450504ba64d314b576ba7307e049db693bd4554e134683a`  
		Last Modified: Tue, 10 Nov 2026 21:44:31 GMT  
		Size: 2.4 MB (2368524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfd536257c4c23c63dd513af911eb2e1fede9964a233031e71081b8002de414`  
		Last Modified: Tue, 10 Nov 2026 21:44:36 GMT  
		Size: 243.4 MB (243410533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:f8a40999cb3c6d9fb7afcba3d71d2dcd2484243e64f17ae79709a3cda06e7e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0a2e296d0b484a353b8f046e4da3880f45876e6e709bde63c095eb5c1145f7`

```dockerfile
```

-	Layers:
	-	`sha256:505efa92d59cfd926e497a0b351c2b5348faf11edd9bf8ee0bbb349052f04f6a`  
		Last Modified: Tue, 10 Nov 2026 21:44:31 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bff10cb784d9e6da5078b13db03c295757234a86cc736d62b62d205d8d795c7e`  
		Last Modified: Tue, 10 Nov 2026 21:44:31 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d6351fae8080359f6a513b9d00d0bf4e1029d95b9fbdf3607674520a89ffc5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (273975145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee0ccd8a0d3eab3916a12e1412fb83fbd11ba20a91c4c404a877772ae27c117`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 21:46:08 GMT
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
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32d7f3d7354c9fc19ceb706a4a91a9c8c11b547c637ec27b05f8d72d8ee8832`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 2.3 MB (2311837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd5493ff7ea14a945da6842947a827f516c33c8804b08787dd314f8a152e065`  
		Last Modified: Tue, 10 Nov 2026 21:47:01 GMT  
		Size: 241.4 MB (241449271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:6186cefd28ede5921eae75faab13d9f2359b11f0dd2cb44b352c5fd85a5f8f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9917eb24b1fb59753edd3436b4e9c371cf3918835b2cbbe68abcee44d24d9517`

```dockerfile
```

-	Layers:
	-	`sha256:a4a402d90040023e6f06ce0664ecfc646ee544e3aaae864f5fdaf43b272dd5f2`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b08e5ffed04cd3a80722c2688904b24e99192be12bc4a6275a2393ac1f628297`  
		Last Modified: Tue, 10 Nov 2026 21:46:56 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
