## `openjdk:28-ea-25-slim-bookworm`

```console
$ docker pull openjdk@sha256:5812aab386ceacbce98909f0077ea3fac7750dcf00f96f5295b0666abb8b0db7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-25-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:6cfb10ac12bf1e69675f3517891693cf2b588ea39ebc4bbaba0b89a51150d4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276804030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d3733607b690b9baa193cd64e5457b89c9e02d43b61933302640f6f574315b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 24 Nov 2026 00:07:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:48 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:48 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:48 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:48 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52caf6e8dfb925a57415f353ecb967827867ba462f66d01866d82ea5753eb0da`  
		Last Modified: Tue, 24 Nov 2026 00:08:11 GMT  
		Size: 3.9 MB (3852348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df907a51dc3772ed320ab24fcca42797d9ec32763bce7a64d5a44dbef050a5d`  
		Last Modified: Tue, 24 Nov 2026 00:08:15 GMT  
		Size: 244.7 MB (244703700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:4aed198e3777a74da98ae22eed224055a66dda2010e666bcd20a08163e16938f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77775236cb10568b86d53e5df45462e49d34d3de8de4042eb702edbc47fb9047`

```dockerfile
```

-	Layers:
	-	`sha256:cf2f039187fb615f483a4156d3eb7016a86a15d3f5bb05fcb8c92c9e3fbcf55e`  
		Last Modified: Tue, 24 Nov 2026 00:08:11 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:684a40289d50e5bd1566c7bd405603387de99e4118c1e671a8e588c42215de98`  
		Last Modified: Tue, 24 Nov 2026 00:08:11 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-25-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:14e4bc2d12aaee28519fb1e7e6487e1d6a8a6352ace93914ac6aea83a7cdd6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274525720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9073fbac9baa14e039a18237b5bbb73c300c4211b274c638bd52b509dcf1151`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 24 Nov 2026 00:07:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:59 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:59 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:59 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:59 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:59 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72586ac6255652d80f66181fa2a58b718176cd81dc5e0eeec38098eab06c8f5e`  
		Last Modified: Tue, 24 Nov 2026 00:08:22 GMT  
		Size: 3.7 MB (3666961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298d78022646a428687e2427bac6d80a2e835cf944ddb165b7fe2128783c0315`  
		Last Modified: Tue, 24 Nov 2026 00:08:26 GMT  
		Size: 242.7 MB (242714401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:0efa194cff52e75a02742e4ef322e237725f339969fe09fffad78047acfec3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb600b61d3aaf8aa786e6d04955c9d029c26cfc5e83bd2eade655390777136e`

```dockerfile
```

-	Layers:
	-	`sha256:209ff5465489081ed96f5bae086ad280eb02d55b7bac34a11fc63f12bf1c925d`  
		Last Modified: Tue, 24 Nov 2026 00:08:22 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad9daa99e4fc09ed8e665c813a74574185c384627109cac16647cfd8f368090`  
		Last Modified: Tue, 24 Nov 2026 00:08:22 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
