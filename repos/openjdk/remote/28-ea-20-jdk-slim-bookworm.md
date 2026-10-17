## `openjdk:28-ea-20-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:f5ade99a8e508ddceacc82c9ec95afdd50993b34fd7e5072579b8b9831b7a7fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:72a01560db2d05abb277cbf48b89562d2664beb14b59c16c94758f73e33739d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275100506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa53ad0028c781ffd90b33a91f2e4ced211da63858e5c25dc76133fc40dbf51`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:43 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:43 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:43 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df586b66aa9f9c3f6b036d975e274af81ef3721d8bc46d1b30b9d68f4b35ebd8`  
		Last Modified: Fri, 16 Oct 2026 20:33:05 GMT  
		Size: 3.9 MB (3853138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abea5bce1019ded4dd430be88835fea5ce88e790647ec1c6e3dc563ad2e64b59`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 243.0 MB (242998045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:10eeb6674968d9750e136db7983adef492f7c28cc31dff0ff4456112fcf5e87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6a6e264ae7de1adb23511c461986229081ec8ee2a7cbd0a8520492fbba46e6`

```dockerfile
```

-	Layers:
	-	`sha256:8bef26b67d4fa1632e84969206f23fc811b4910e9e33c6d82e11eb7048867b7e`  
		Last Modified: Fri, 16 Oct 2026 20:33:05 GMT  
		Size: 2.7 MB (2655777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa63bbb4cb964577714cb9eee38cd16d7af9170b4647db195e989dec59cfa79d`  
		Last Modified: Fri, 16 Oct 2026 20:33:05 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:00ca6c43ae585df02fcdac3e08ec8d2e122bc5cf78a5389da73093321ec460a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272847629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1547e209d7cdef7e272f3c50365b2ec13c7c679ae3cfb3ec29b6ed943bf67b5a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:36 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 16 Oct 2026 20:32:36 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:36 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:36 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66bb321fc0e9e98997306398708d34cb1c959a9ad369a855bf0b5b2a46108b8`  
		Last Modified: Fri, 16 Oct 2026 20:33:00 GMT  
		Size: 3.7 MB (3668779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c0c9a56d39d87c2baded1de31130daafb3bcac7e1d637f7a97003715d4396`  
		Last Modified: Fri, 16 Oct 2026 20:33:04 GMT  
		Size: 241.0 MB (241041671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:9deaef4c12e2a4fa912df54059845354305126bfc036ed558fc2238b32c56dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936db183570f439a77f522e25da8717198db177f350d44ebe832811c23d609f4`

```dockerfile
```

-	Layers:
	-	`sha256:1493951653bed9e001ba51399acd1211c56454b5d8a8168163e47b081064a0d9`  
		Last Modified: Fri, 16 Oct 2026 20:33:00 GMT  
		Size: 2.7 MB (2655411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2d494c9f8459b819eb93c188504ad239ea2584ee7ecdb196cb739349667ce4`  
		Last Modified: Fri, 16 Oct 2026 20:33:00 GMT  
		Size: 17.0 KB (16989 bytes)  
		MIME: application/vnd.in-toto+json
