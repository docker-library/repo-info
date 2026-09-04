## `openjdk:28-ea-14-slim-bookworm`

```console
$ docker pull openjdk@sha256:d1a7d20fef994d63888710abf708115d2e7177a363bdd7143e723c1aef796ec7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-14-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:a26c0e85b0cb684b3a475835446f78b619093c74d17f0acd7b3facd7c2e7e3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275006631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18886ac097ca72742c398e916a7a58bc58f96fdbe2d52fbdec1e7958c89519bd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 21:09:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:26 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:26 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:26 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:26 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbda4d3c736b054b32437c9cea9c1dd962a8b1c8ff3cf9d2a4b82925c62919d2`  
		Last Modified: Fri, 04 Sep 2026 21:09:50 GMT  
		Size: 4.0 MB (4046341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4e516b270789095e0c8dc07f2d2ab848efd699fc52cb9b071265725eba4271`  
		Last Modified: Fri, 04 Sep 2026 21:09:54 GMT  
		Size: 242.7 MB (242727635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a2f38e95d682c8c508cdc86dee166cae49651c26df8f683ed7e136fdbb56425f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9720c8f8f0964d006ddff370991660d9a9e3dd0b9d7390cbb530358b30e622`

```dockerfile
```

-	Layers:
	-	`sha256:0f6369946aa720845096e7b617507e30a33987181f8a7951502c1f9b81423344`  
		Last Modified: Fri, 04 Sep 2026 21:09:49 GMT  
		Size: 2.7 MB (2655103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a673f58f8b180d26e451e555db61e51ff8285f4e21020e2dfd1557871711e225`  
		Last Modified: Fri, 04 Sep 2026 21:09:49 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:17c8e2d9f3cd47ac6f21eb08ced17b8772d257ba95d5a84f81c16ab19f6779dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272772841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364beb1f60141dcb82d6f64894b19db6a73e34c9cf8b8a3fe6137d367c9d81e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 21:08:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:11 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:11 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:11 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:11 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:11 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42a5cf88fc007c2d23045cda5af430e38b2f1b5fba8de817d10b71eb014110c`  
		Last Modified: Fri, 04 Sep 2026 21:09:34 GMT  
		Size: 3.9 MB (3861380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa2cb65dc19ae4b34ac49aa62c0a7c7cf44f2df2c27586d6c0e397db8f63197`  
		Last Modified: Fri, 04 Sep 2026 21:09:38 GMT  
		Size: 240.8 MB (240794172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8c73bc8b583693246eabbe693286bdf421b4b4126538f6d0711bee1aae3e7981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356e3de6e664e1aefd81a10e397f9cac8aff9298d6ea71bb57cb8b127ff97d56`

```dockerfile
```

-	Layers:
	-	`sha256:8eb075de7c4ef593e92b7b4579de78854c5635071c32b9c5c47a2c2af0935936`  
		Last Modified: Fri, 04 Sep 2026 21:09:34 GMT  
		Size: 2.7 MB (2654737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8aec0cf296140d3ea11f7424f1656a5c3dad144b37f7d54c15e8e9c7c713961`  
		Last Modified: Fri, 04 Sep 2026 21:09:34 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
