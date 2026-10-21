## `openjdk:28-ea-slim`

```console
$ docker pull openjdk@sha256:5c6795cfab0e5f1ab3adada905d4928c5e1fc7f2302d0bf71a9c7ec64f6f34d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:8f9aa6997f3dd217053982ab76dc921ad25d1dce3bef9382a3f5f232d38b1048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275205086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67075ad49d79b1e8e505f27c89ae9be06e1721e76dc31a98122aea63cad4627`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:50:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:51 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 00:50:51 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:50:51 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:50:51 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 00:50:51 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 00:50:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7db5dd57bd3ef92bdcc886cb993f0deb4f244189ebac6bd422b1695bde145f`  
		Last Modified: Wed, 21 Oct 2026 00:51:11 GMT  
		Size: 2.4 MB (2368454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d92630b0d53c57fc10f2c20f5370642bb8926a207e437e8bf82bf72ebe999f`  
		Last Modified: Wed, 21 Oct 2026 00:51:15 GMT  
		Size: 243.0 MB (242993053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:73668ad3a61a9c935929496e00ead993fd2dfacebc009474e46fa81b6118c771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdafe3c643977605afa21679d3899a611654bdaf31b5164d57b92dd972397c43`

```dockerfile
```

-	Layers:
	-	`sha256:4895d22e497a6707258da6fc47e08af6a3c891c0cfe500b0505922ad59de0bdf`  
		Last Modified: Wed, 21 Oct 2026 00:51:11 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:772a413d64613c2c45b6dbad18071484cd7a4a0074c1f15d1452e1635a1b86ee`  
		Last Modified: Wed, 21 Oct 2026 00:51:10 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4ca5df0b5446c2ee7bb30a08435c351f808f398b840435ce0584820507d21913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273548859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef0955efc1dac87f370f3a53826f573f86d33415a78e4c24df6055c82d0c23c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:53:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:52 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 21 Oct 2026 00:53:52 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:53:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:53:52 GMT
ENV JAVA_VERSION=28-ea+20
# Wed, 21 Oct 2026 00:53:52 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 21 Oct 2026 00:53:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee42856860d368fb7dc6d22ae854a43495fad825c64ada52633d26c38c8772e`  
		Last Modified: Wed, 21 Oct 2026 00:54:15 GMT  
		Size: 2.3 MB (2311831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d158c00e2b4235a54d7af54a6190d4adb29d45e65450ae4e19a7028f7b276cf`  
		Last Modified: Wed, 21 Oct 2026 00:54:20 GMT  
		Size: 241.0 MB (241036550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:c95a080af6f37fcfb252dcb223ec2d369d24c7d2b333991dada093ac9acf35fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2570f87f0bf3f593d6dbbb87afc02c23dc4f6059a16f9de63fb33e4f5177e9`

```dockerfile
```

-	Layers:
	-	`sha256:efbcc1eee557fb7015fe1471d798b63e187c0bde6547f51c75c11c2ea025b25d`  
		Last Modified: Wed, 21 Oct 2026 00:54:15 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:628f6f0aa8a5d68af65562aa039c45fc0e7ed5f36956d70f807b08279ad90301`  
		Last Modified: Wed, 21 Oct 2026 00:54:15 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
