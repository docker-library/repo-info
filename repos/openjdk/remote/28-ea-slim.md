## `openjdk:28-ea-slim`

```console
$ docker pull openjdk@sha256:7bc333036b13211a614def20501e2354575a5deda77db554eb7ba166eedfdadc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:89d05f1c030cf10e9a61120e880a787b5d97d8d73483f42d70fe681d2fd453fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275621580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5d439c6d272622a5265be6001be891c0d3f40ca99615aeeebe9de5425e2b1d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:02 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 07:42:02 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:42:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:42:02 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 07:42:02 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 07:42:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67feb97814d17d6aff9859064db331c7c8aad1392d59d49582c751140b424da9`  
		Last Modified: Thu, 05 Nov 2026 07:42:23 GMT  
		Size: 2.4 MB (2368477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e66e89ea80e20f818782cb93a1b9d148cefa7c67355de86ecc31525847fc4e`  
		Last Modified: Thu, 05 Nov 2026 07:42:28 GMT  
		Size: 243.4 MB (243396971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:62ea6330bd4ed1eb540af52a3ff887fa1357a02feef52e4603e129c19ec0c87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6750954e2b3b13c701cc171b1fc426f3af826d0df868d0a0ae2c79dc1b0b915f`

```dockerfile
```

-	Layers:
	-	`sha256:44afc79daaf388e1b9ba5e4c8b606d04f08f9a85f5f6a51c47dd10c58b0e83ed`  
		Last Modified: Thu, 05 Nov 2026 07:42:23 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b67736e63bb612019322e6859f1523f90d902c6d1fc578c9998d33f964451f1`  
		Last Modified: Thu, 05 Nov 2026 07:42:23 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5a0961e6a510c3dda518f68467cf5bec3253a2aa37dc3988e7273e398315d13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273949480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f913f8ea0f42de177d968f5029f4fd941f881e779e804284f784319cce66f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:45:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:46:20 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 07:46:20 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:46:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:46:20 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 07:46:20 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 07:46:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e223121c70d59da40b09b0fa88d9a2fbcd3e3d2082e1535318da992e222810f`  
		Last Modified: Thu, 05 Nov 2026 07:46:43 GMT  
		Size: 2.3 MB (2311805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4913e1216e3e881020701db391f5d4bcb6515b6b1e7d301f84a340da9f7c5a7a`  
		Last Modified: Thu, 05 Nov 2026 07:46:48 GMT  
		Size: 241.4 MB (241423638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:d94ed5a4a65632dc826cca6bc0fa470578aa26c0a7903739c0cbb657a8d2bdc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891db10db97abe2ac2988fcc43a2043b917b9da348d864a317e25e929c692b4c`

```dockerfile
```

-	Layers:
	-	`sha256:242f60fb30e17361275da8eac529437adf6e878bd90dd93b3705b993931e7860`  
		Last Modified: Thu, 05 Nov 2026 07:46:43 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10536beed9451e7e6af19d7baeb4469414fddb7ad0f0bcc3c8885e5ffa6bc1e8`  
		Last Modified: Thu, 05 Nov 2026 07:46:43 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
